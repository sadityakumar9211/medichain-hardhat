// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

//imports
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "hardhat/console.sol";

//errors
error PatientMedicalRecords__NotOwner();
error PatientMedicalRecords__NotDoctor();
error PatientMedicalRecords__NotApproved();

contract PatientMedicalRecord is ReentrancyGuard, KeeperCompatibleInterface {
    //Type Declarations

    struct Patient {
        string name;
        address patientAddress; //account address of patient
        string aadharNumber;
        string profilePicture; //ipfs hash for profile picture.
        uint256 dob;
        string residentialAddress;
        string email;
        string phoneNumber;
        string bloodGroup;
        uint256 dateOfRegistration; //the date of registration of patient to the system. Tells which records are not in the system.
        //Medical Records
        string[] vaccinationHash; //0
        string[] accidentHash; // 1
        string[] chronicHash; //2
        string[] acuteHash; //3
    }

    struct Doctor {
        string name;
        string doctorRegistrationId; //NMC Regsitration Id
        address doctorAddress; //account address of doctor
        string aadharNumber;
        string profilePicture;
        uint256 dob;
        string residentialAddress;
        string email;
        string phoneNumber;
        uint256 dateOfRegistration;
        string specialization;
        address hospitalAddress;
    }

    struct Hospital {
        string name;
        address hospitalAddress; //account address of hospital
        string email;
        string phoneNumber;
        uint256 dateOfRegistration;
        address[] doctorAddresses; //array of doctor addresses
    }

    //Storage Variables
    mapping(address => Patient) private s_patients;
    mapping(address => Doctor) private s_doctors;
    mapping(address => Hospital) private s_hospitals;

    //mapping(address => mapping(address => Doctor)) private s_hospitalToDoctor; //hospital to doctor mapping
    //patientAddress -> doctorAddress -> approvdTimestamp
    mapping(address => mapping(address => uint256)) private s_approvedDoctors; //patient to doctor mapping and doctor to approve-timestamp mapping

    address private immutable i_owner;

    //Events
    event DoctorApproved(address indexed doctorAddress, address indexed patientAddress);
    event DoctorRevoked(address indexed doctorAddress, address indexed patientAddress);
    event patientsDetailsModified(address indexed patientAddress, Patient indexed patientDetails); //added or modified
    event doctorsDetailsModified(address indexed doctorAddress, Doctor indexed doctorDetails); //added or modified to the mapping
    event hospitalsDetailsModified(
        address indexed hospitalAddress,
        Hospital indexed hospitalDetails
    ); //added or modified to the mapping

    //modifiers
    modifier onlyOwner() {
        if (msg.sender != i_owner) {
            revert PatientMedicalRecords__NotOwner();
        }
        _;
    }

    modifier onlyDoctor() {
        if (s_doctors[msg.sender].doctorAddress != msg.sender) {
            revert PatientMedicalRecords__NotDoctor();
        }
        _;
    }

    modifier onlyApproved(address patientAddress) {
        if (s_approvedDoctors[patientAddress][msg.sender] == 0) {
            //if approve timestamp is == 0 (same as epoch time)
            revert PatientMedicalRecords__NotApproved();
        }
        _;
    }

    constructor(uint256 revokeApprovalInterval) {
        console.log("PatientMedicalRecord Contract Constructor Called");
        i_owner = msg.sender;
        i_revokeApprovalInterval = revokeApprovalInterval;
    }

    //Functions

    //patients can themselves register to the system.
    function registerPatient(
        address _patientAddress,
        string calldata _name,
        string calldata _aadharNumber,
        string calldata _profilePicture,
        uint256 _dob,
        string calldata _residentialAddress,
        string calldata _email,
        string calldata _phoneNumber,
        string calldata _bloodGroup
    ) external {
        Patient memory patient;
        patient.name = _name;
        patient.patientAddress = _patientAddress;
        patient.aadharNumber = _aadharNumber;
        patient.profilePicture = _profilePicture;
        patient.dob = _dob;
        patient.residentialAddress = _residentialAddress;
        patient.email = _email;
        patient.phoneNumber = _phoneNumber;
        patient.bloodGroup = _bloodGroup;
        patient.dateOfRegistration = block.timestamp;
        patient.vaccinationHash = new string[](0);
        patient.accidentHash = new string[](0);
        patient.chronicHash = new string[](0);
        patient.acuteHash = new string[](0);
        s_patients[_patientAddress] = patient;
        emit patientsDetailsModified(_patientAddress, patient);
    }

    //Adds the patient details (treatment details). This IPFS hash contains all the information about the treatment in json format pinned to pinata.
    function addPatientDetails(
        address _patientAddress,
        uint8 _category,
        string calldata _IpfsHash
    ) external onlyDoctor onlyApproved(_patientAddress) nonReentrant {
        Patient memory patient = s_patients[_patientAddress];

        if (_category == 0) {
            s_patients[_patientAddress].vaccinationHash.push(_IpfsHash);
        } else if (_category == 1) {
            s_patients[_patientAddress].accidentHash.push(_IpfsHash);
        } else if (_category == 2) {
            s_patients[_patientAddress].chronicHash.push(_IpfsHash);
        } else if (_category == 3) {
            s_patients[_patientAddress].acuteHash.push(_IpfsHash);
        }
        s_patients[_patientAddress] = patient;
        //emitting the event.
        emit patientsDetailsModified(_patientAddress, s_patients[_patientAddress]);
    }

    //this will be done using script by the owner
    function addDoctorDetails(
        //Add or modify details of the doctor.
        address doctorAddress,
        string calldata name,
        string calldata doctorRegistrationId,
        string calldata aadharNumber,
        string calldata profilePicture,
        uint256 dob,
        string calldata residentialAddress,
        string calldata email,
        string calldata phoneNumber,
        string calldata specialization,
        address hospitalAddress
    ) external onlyOwner nonReentrant {
        Doctor memory doctor = s_doctors[doctorAddress];
        doctor.name = name;
        doctor.doctorRegistrationId = doctorRegistrationId;
        doctor.aadharNumber = aadharNumber;
        doctor.profilePicture = profilePicture;
        doctor.dob = dob;
        doctor.residentialAddress = residentialAddress;
        doctor.email = email;
        doctor.phoneNumber = phoneNumber;
        doctor.specialization = specialization;
        doctor.hospitalAddress = hospitalAddress;

        s_doctors[doctorAddress] = doctor;
        // s_hospitalToDoctor[hospitalAddress][doctorAddress] = doctor;
        //emitting the event.
        emit doctorsDetailsModified(doctorAddress, doctor);
    }

    //this will be done using script by the owner
    function addHospitalDetails(
        address hospitalAddress,
        string calldata name,
        string calldata email,
        string calldata phoneNumber,
        address[] calldata doctorAddress
    ) external onlyOwner nonReentrant {
        Hospital memory hospital = s_hospitals[hospitalAddress];
        hospital.name = name;
        hospital.email = email;
        hospital.phoneNumber = phoneNumber;
        hospital.doctorAddresses = doctorAddress[0:]; //copying the entire array.
        s_hospitals[hospitalAddress] = hospital;
        //emitting the event.
        emit hospitalsDetailsModified(hospitalAddress, hospital);
    }

    //approving a doctor for 2 days
    function approveDoctor(address doctorAddress) external nonReentrant {
        s_approvedDoctors[msg.sender][doctorAddress] = block.timestamp; //current timestamp
        emit DoctorApproved(doctorAddress, msg.sender)
    }

    //revoking the approval of a doctor
    function revokeApproval(address doctorAddress) external nonReentrant{
        s_approvedDoctors[msg.sender][doctorAddress] = 0;  //timestamp 0 means that the doctor is not authorized. 
        emit DoctorRevoked(doctorAddress, msg.sender);
    }


    //view or pure functions
    //patient viewing his own records only
    function getMyDetails() external view returns (Patient memory) {
        return s_patients[msg.sender];
    }

    //authorized doctor viewing patient's records
    function getPatientDetails(address _patientAddress)
        external
        view
        onlyDoctor
        onlyApproved(_patientAddress)
        returns (Patient memory)
    {
        return s_patients[_patientAddress];
    }

    function getDoctorDetails(address _doctorAddress)
        external
        view
        returns (Doctor memory)
    {
        return s_doctors[_doctorAddress];
    }

    function getHospitalDetails(address _hospitalAddress)
        external
        view
        returns (Hospital memory)
    {
        return s_hospitals[_hospitalAddress];
    }

    //patients can check his approved doctor's list.
    function getApprovedDoctors() external view returns (mapping((address => uint256))) {
        return s_approvedDoctors[msg.sender];
    }

    function getPatientRecordsByOwner(address _patientAddress) external view onlyOwner nonReentrant returns(Patient memory){
        return s_patients[_patientAddress];
    }

    function getOwner() external pure returns (address) {
        return i_owner;
    }

}

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

//imports
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "hardhat/console.sol";

//errors
error PatientMedicalRecords__NotOwner();
error PatientMedicalRecords__NotDoctor();
error PatientMedicalRecords__NotApproved();

contract PatientMedicalRecord is ReentrancyGuard {
    //Type Declarations

    struct Patient {
        string name;
        address patientAddress; //account address of patient
        string aadharNumber;
        string profilePicture; //ipfs hash for profile picture.
        string dob;
        string residentialAddress;
        string email;
        string phoneNumber;
        string bloodGroup;
        string dateOfRegistration; //the date of registration of patient to the system. Tells which records are not in the system.
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
        string dob;
        string residentialAddress;
        string email;
        string phoneNumber;
        string dateOfRegistration;
        string specialization;
        address hospitalAddress;
    }

    struct Hospital {
        string name;
        address hospitalAddress; //account address of hospital
        string email;
        string phoneNumber;
        string dateOfRegistration;
        address[] doctorAddresses; //array of doctor addresses
    }

    //Storage Variables
    mapping(address => Patient) private s_patients;
    mapping(address => Doctor) private s_doctors;
    mapping(address => Hospital) private s_hospitals;

    mapping(address => mapping(address => Doctor)) private s_hospitalToDoctor; //hospital to doctor mapping
    mapping(address => mapping(address => Doctor)) private s_approvedDoctors; //patient to doctor mapping

    address private i_owner;

    //Events
    event DoctorApproved(address indexed doctorAddress, address indexed patientAddress);
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
        if (s_approvedDoctors[patientAddress][msg.sender].doctorAddress != msg.sender) {
            revert PatientMedicalRecords__NotApproved();
        }
        _;
    }

    constructor() {
        console.log("PatientMedicalRecord Contract Constructor Called");
        i_owner = msg.sender;
    }

    //Functions

    function addPatientDetails(
        address patientAddress,
        address doctorAddress,
        uint8 category,
        string memory IpfsHash
    ) public onlyDoctor onlyApproved(patientAddress) nonReentrant {
        Patient memory patient = s_patients[patientAddress];

        if(category.toString() == "0"){
            patient.vaccinationHash.push(IpfsHash);
        }else if(category.toString() == "1"){
            patient.accidentHash.push(IpfsHash);
        }else if(category.toString() == "2"){
            patient.chronicHash.push(IpfsHash);
        }else if(category.toString() == "3"){
            patient.acuteHash.push(IpfsHash);
        }
        s_patients[patientAddress] = patient;
        //emitting the event.
        emit patientsDetailsModified(patientAddress, patient);
    }

    function addDoctorDetails(     //Add or modify details of the doctor.
        address doctorAddress,
        string calldata name,
        string calldata doctorRegistrationId,
        string calldata aadharNumber,
        string calldata profilePicture,
        string calldata dob,
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
        //emitting the event.
        emit doctorsDetailsModified(doctorAddress, doctor);
    }

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
        hospital.doctorAddresses = doctorAddress[0:];     //copying the entire array.
        s_hospitals[hospitalAddress] = hospital;
        //emitting the event.
        emit hospitalsDetailsModified(hospitalAddress, hospital);
    }




}

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
        string hospitalAddress;
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

    
}

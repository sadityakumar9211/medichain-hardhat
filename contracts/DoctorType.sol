// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


library DoctorType {
    //Type Declaration
    struct Doctor {
        string name;
        string doctorRegistrationId; //NMC Regsitration Id
        address doctorAddress; //account address of doctor
        string aadharNumber;
        string profilePicture;
        string email;
        string phoneNumber;
        uint256 dateOfRegistration;
        string specialization;
        address hospitalAddress;
    }
}
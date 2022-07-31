// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


library DoctorType {
    //Type Declaration
    struct Doctor {
        address doctorAddress; //account address of doctor
        string name;
        string doctorRegistrationId; //NMC Regsitration Id
        uint256 dateOfRegistration;
        string specialization;
        address hospitalAddress;
    }
}
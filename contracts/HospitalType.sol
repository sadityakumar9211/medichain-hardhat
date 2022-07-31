// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

library HospitalType{
    //Type Declaration

    struct Hospital{
        string name;
        address hospitalAddress; //account address of hospital
        string email;
        string phoneNumber;
        uint256 dateOfRegistration;
    }
}
const { assert, expect } = require("chai")
const { network, deployments, getNamedAccounts,  ethers } = require("hardhat")
const { developmentChains } = require("../../helper-hardhat-config")

!developmentChains.includes(network.name)
    ? describe.skip
    : describe("Patient Medical Record System Unit Tests", function (){
        let patientMedicalRecordSystem, patientMedicalRecordSystemContract
        before(async function () {
            deployer = await getNamedAccounts().deployer
            await deployments.fixture(["all"])
            patientMedicalRecordSystemContract = await ethers.getContract("PatientMedicalRecordSystem")

            patientMedicalRecordSystem = await patientMedicalRecordSystemContract.connect(deployer)
        })
        
    })
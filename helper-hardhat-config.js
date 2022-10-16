//Configurations for deployment on various networks --> values of vrfCoordinatorV2 changes on
//various networks

const { ethers } = require("ethers")

//all the parameters that are different chain-to-chain.
const networkConfig = {
    // 4: {
    //     name: "rinkeby",
    //     waitConfirmations: 6,
    // },
    31337: {
        name: "hardhat",
        waitConfirmations: 1,
    },
    5: {
        name: "goerli",
        waitConfirmations: 6,
    }
}


const developmentChains = ["hardhat", "localhost"]
const CATEGORY = 0
const IPFS_HASH = ""       //The IPFS hash generated after uploading the file of the patient to the pinata IPFS node. 
const VERIFICATION_BLOCK_CONFIRMATIONS = 6

module.exports = {
    networkConfig,
    developmentChains,
    CATEGORY,
    IPFS_HASH,
    VERIFICATION_BLOCK_CONFIRMATIONS,
}

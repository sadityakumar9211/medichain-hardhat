<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->

<a name="readme-top"></a>

<!--
*** This README is created using template from https://github.com/othneildrew/Best-README-Template
-->

<!-- PROJECT SHIELDS -->
<!-- 
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![GPL-3.0 License](https://img.shields.io/github/license/sadityakumar9211/medichain-hardhat.svg?style=for-the-badge)](https://github.com/sadityakumar9211/medichain-hardhat/blob/master/COPYING)
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/sadityakumar9211/medichain-hardhat">
    <img src="logo.svg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">MediChain: Decentralized Telemedicine and Medical Records</h3>

  <p align="center">
    This repository is one of the three repositories which are part of MediChain Project.
    <br>
    <a href="https://github.com/sadityakumar9211/medichain-nextjs"><strong> <i>medichain-nextjs</i>: Frontend Repository of MediChain Project»</strong></a>
    <br>
    <a href="https://github.com/sadityakumar9211/medichain-thegraph"><strong> <i>medichain-thegraph</i>: The Graph Repository of MediChain Project»</strong></a>
    <br>
    <br />
    <a href="https://youtube.com/playlist?list=PLJ2CQ-kV7OQFkZfmnPIGMQLbhEUKIyWln">Watch Demo Videos</a>
    <br />
    <a href="https://medichain.vercel.app">Visit Site</a>
    ·
    <a href="https://github.com/sadityakumar9211/medichain-hardhat/issues">Report Bug</a>
    ·
    <a href="https://github.com/sadityakumar9211/medichain-hardhat/issues">Request Feature</a>
  </p>
</div>

### This is the hardhat repository of this project.
##### If `Application Error` comes after just connecting the wallet, then change the network in metamask to Goerli Testnet and reload the page. This bug is unhandled for now.

### Planned Changes
> After my minor exams
1. Rainbowkit + wagmi for connect button
2. web3.storage for files
3. Toast for Notifications
4. DAO integration
5. XMTP integration
6. Video call integration

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#what-problem-does-it-solve">What problem does it solve?</a></li>
        <li><a href="#project-status">Current Status</a></li>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#requirements">Requirements</a></li>
        <li><a href="#quickstart">Quickstart</a></li>
      </ul>
    </li>
    <li><a href="#deployment-to-a-testnet-or-mainnet">Deployment to a testnet or mainnet</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

<img width="1278" alt="current image" src="https://gateway.pinata.cloud/ipfs/QmXvkXXZ6LCMGESiJCoifJAuZAurTyjXu4HoqMaY5Ko7d9?_gl=1*1r1ds1w*_ga*MTM2MzA3MTc2Ni4xNjc0MDczMjM4*_ga_5RMPXG14TE*MTY3NDA3MzIzNy4xLjEuMTY3NDA3MzMwMy42MC4wLjA.">

### What Problem does it Solve?

**Blockchain** being an immutable ledger and with decentralized nature has a great potential for increasing the security, privacy and efficiency of Medical Health Record keeping systems.

Currently existing solutions rely on centralized database which are susceptible to _Ransomware attacks, Denial of Service(DoS) attacks and also have significant counterparty risks._ Some decentralized solutions are also exist but some of them are not really decentralized that are based on private or permissioned blockchain, while some which are based on public blockchain have not properly addressed the performance and scalability issues. There is also no virtual private and safe way for patients to interact with their doctor and vice-versa. This platform also solves that by integrating this application with the a state of the art decentralized communications channel supported by _XMTP_ and video meeting features by _Huddle01_. Further, in future I am also planning to add a DAO to this application to even more decentralize the whole system by also making patients involved in medical administration along with doctors, hospital administration and and their governing comittee.

### Project Status

Currently, the proposed system is based on EVM compatible public blockchains using IPFS as a decentralized file storage solution and uses 2048 bit RSA encryption to encrypt the IPFS HASH of file metadata on the client-side before uploading the HASH on the blockchain. For supporting fast and complex queries this system uses a decentralized indexing protocol _The Graph_. The smart contract is currently deployed on _Goerli Testnet_.

Currently, with this system patients can access their medical records anytime anywhere without the counterparty risk from centralized entity. This system also features QR code for sharing of medical files from patients to doctors. With the proposed implementation the decentralized medical record keeping system provides increased security and privacy compared to centralized systems without loss of significant performance or scalability benefits.

At present, I am actively testing the DAO integration, for this system under a child project named **_VyroChain_**. Here is the link to [VyroChain](https://github.com/sadityakumar9211/vyrochain).

### VyroChain is a Child Project of MediChain Project for testing DAO integration.

> The link to VyroChain is [here](https://github.com/sadityakumar9211/vyrochain)

### The links to other repositories of this(MediChain) project is at the top.

> This is only the hardhat repository of the project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

The following is a list of major tools used for developing this repository.

-   [![Hardhat][hardhat]][hardhat-url]
-   [![Openzeppelin][openzeppelin.io]][openzeppelin-url]
-   [![Ethers][ethers.js]][ethers-url]
-   [![Goerli Testnet][goerli]][goerli-url]
-   [![Alchemy][alchemy]][alchemy-url]
-   [![Etherscan][etherscan]][etherscan-url]

The tools used in the [NextJS](https://github.com/sadityakumar9211/medichain-nextjs) repository are: -
-   [![Next][next.js]][next-url]
-   [![React][react.js]][react-url]
-   [![tailwindcss][tailwindcss]][tailwind-url]
-   [![moralis][moralis]][moralis-url]
-   [![web3uikit][web3uikit]][web3uikit-url]

The major tools used in the [The Graph](https://github.com/sadityakumar9211/medichain-thegraph) repository are: -
- [![The Graph][the graph]][graph-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

# Getting Started

## Requirements

-   [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
    -   You'll know you did it right if you can run `git --version` and you see a response like `git version x.x.x`
-   [Nodejs](https://nodejs.org/en/)
    -   You'll know you've installed nodejs right if you can run:
        -   `node --version` and get an ouput like: `vx.x.x`
-   [Yarn](https://classic.yarnpkg.com/lang/en/docs/install/) instead of `npm`
    -   You'll know you've installed yarn right if you can run:
        -   `yarn --version` and get an output like: `x.x.x`
        -   You might need to install it with `npm`
-   Optional Package
    -   For convenience in development globally install `hardhat-shorthand`. More info [here](https://www.npmjs.com/package/hardhat-shorthand)
    ```bash
    yarn global add hardhat-shorthand
    ```

## Quickstart

```bash
git clone https://github.com/sadityakumar9211/medichain-hardhat
cd medichain-hardhat
yarn
```

### Optional Gitpod

If you can't or don't want to run and install locally, you can work with this repo in Gitpod. If you do this, you can skip the `clone this repo` part.

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#github.com/sadityakumar9211/medichain-hardhat)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

# Deployment to a testnet or mainnet

1. Setup environment variabltes

You'll want to set your `GOERLI_RPC_URL` and `OWNER_PRIVATE_KEY` as environment variables. You can add them to a `.env` file, similar to what you see in `.env.example`.

-   `OWNER_PRIVATE_KEY`: The private key of your account (like from [metamask](https://metamask.io/)). **NOTE:** FOR DEVELOPMENT, PLEASE USE A KEY THAT DOESN'T HAVE ANY REAL FUNDS ASSOCIATED WITH IT.

    -   You can [learn how to export it here](https://metamask.zendesk.com/hc/en-us/articles/360015289632-How-to-Export-an-Account-Private-Key).

-   `GOERLI_RPC_URL`: This is url of the kovan testnet node you're working with. You can get setup with one for free from [Alchemy](https://alchemy.com/)

-   `ETHERSCAN_API_KEY`: This is the API key generate from [here](https://docs.etherscan.io/) for used for verification of deployed smart contract code.

2. Get testnet ETH

Head over to [faucets.chain.link](https://faucets.chain.link/) and get some tesnet ETH. You should see the ETH show up in your metamask.

3. Deploy

```bash
yarn hardhat deploy --network goerli
```

OR

```bash
hh deploy --network goerli
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License

Distributed under the `GPL v3.0` License. See [COPYING](https://github.com/sadityakumar9211/medichain-hardhat/blob/master/COPYING) for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

If you appreciated this, feel free to follow me or donate!

ETH Address: 0xED5A704De64Ff9699dB62d09248C8d179bb77D8A

[![Aditya Singh Linkedin](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/saditya9211/)
[![Aditya Singh Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/sadityakumar921)
[![Aditya Singh StackOverflow](https://img.shields.io/badge/StackOverflow-gray?style=for-the-badge&logo=stackoverflow&logoColor=orange)](https://stackoverflow.com/users/14769639/saditya)
[![Aditya Singh Medium](https://img.shields.io/badge/Medium-000000?style=for-the-badge&logo=medium&logoColor=white)](https://medium.com/@sadityakumar9211)
[![Aditya Singh Gmail](https://img.shields.io/badge/Gmail-gray?style=for-the-badge&logo=gmail)](mailto:sadityakumar9211@gmail.com)

Project Link: [https://github.com/sadityakumar9211/medichain-hardhat](https://github.com/sadityakumar9211/medichain-hardhat)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

-   [Choose an Open Source License](https://choosealicense.com)
-   [hardhat-deploy](https://www.npmjs.com/package/hardhat-deploy)
-   [hardhat-etherscan](https://www.npmjs.com/package/@nomiclabs/hardhat-etherscan)
-   [hardhat-gas-reporter](https://www.npmjs.com/package/hardhat-gas-reporter)
-   [hardhat-contract-sizer](https://www.npmjs.com/package/hardhat-contract-sizer)
-   [solhint](https://www.npmjs.com/package/solhint)
-   [solidity-coverage](https://www.npmjs.com/package/solidity-coverage)
-   [MetaMask](https://metamask.io/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/sadityakumar9211/medichain-hardhat.svg?style=for-the-badge
[contributors-url]: https://github.com/sadityakumar9211/medichain-hardhat/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/sadityakumar9211/medichain-hardhat.svg?style=for-the-badge
[forks-url]: https://github.com/sadityakumar9211/medichain-hardhat/network/members
[stars-shield]: https://img.shields.io/github/stars/sadityakumar9211/medichain-hardhat.svg?style=for-the-badge
[stars-url]: https://github.com/sadityakumar9211/medichain-hardhat/stargazers
[issues-shield]: https://img.shields.io/github/issues/sadityakumar9211/medichain-hardhat.svg?style=for-the-badge
[issues-url]: https://github.com/sadityakumar9211/medichain-hardhat/issues
[license-shield]: https://img.shields.io/github/license/sadityakumar9211/medichain-hardhat.svg?style=for-the-badge
[license-url]: https://github.com/sadityakumar9211/medichain-hardhat/blob/master/COPYING
[linkedin-shield]: https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white
[linkedin-url]: https://linkedin.com/in/saditya9211
[product-screenshot]: https://user-images.githubusercontent.com/78147198/184471278-42e393d0-db94-4577-bdc9-328510b777c0.png

<!-- This is the beginning of the URLs of Badges -->

[ethers.js]: https://img.shields.io/badge/Ethers.js-28359A?style=for-the-badge&logoColor=gray
[ethers-url]: https://docs.ethers.io/v5/
[openzeppelin.io]: https://img.shields.io/badge/Openzeppelin-282844?style=for-the-badge&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAkFBMVEVOXuT%2F%2F%2F9LXORAU%2BNDVePM0PZkcefw8f1OX%2BVGV%2BNJWuOjqvBKW%2BRFVuOepu8%2BUeJ8h%2BqrsvH09f07TuLX2vhYZ%2BWGkOv5%2Bv6zufJSYuVfbebt7%2Fzz9P3Kzvbi5Pq%2Bw%2FRwfOjW2fiLley7wPNodeeTm%2B2Yoe7k5vqDjeunrvB3gupueuiJk%2BzDyPXLz%2Fd%2FievobrfvAAAJXUlEQVR42u3diZaiuvbH8d%2Fe2YqJUKCACM7lVJPV7%2F90%2F%2BFMq73dpgaTCN7zeYNvDSFZIQHk3Xj5vho9vGWv%2FbIcABiUZf81ezxMt4vlmLzzWTg%2Fnp4nO85TJYk2MTP%2BxhwbnYhK83j3NFwt590rrJar%2FWudqsTEsIuNlrRe77fLqjuFy2lWaqVjxqfFWpIymy47UFidJgMRw%2Fg6NiKDyaJqc2G0fUmVre4TlSp%2F2UbtLJyvMhGD6xlJslXUusLiqVYGrhhVv23aVFhNGzEMl1hLM6paUjh7zIXhHkt%2BWLagcJOlGr7o9Km4cWHxogx8Mmrd819o6RMD34x63dyo8LhODUIwaXa8QWG0zw1CMfk%2BClxYjaARktajKmThphFGYKrfC1ZYvakY4cXyWIUpPGmN29DJKUDhfJLjdvKnue%2FCRalxS7p%2B91t4EMZtsRw8Fs4awe1JE%2FkqXIhBGxhZ%2BCl8UIx2YHnwUFhlCu0hWeW6cNZotIluZm4LCzZoF8OFy8KTMNqG5eSucCuM9uFk66rwOUU7pc9uCocp2iodOih0HBg%2BEYEDwycicGD4RIQfZAIPN%2FbCbYr2S7ffLzwl6AI5fbewEEYXsBTfK5wxoxuYZ98prBqDrjBN9Y3CTKM7dPb1wgdBl6jhVwsXgm5Ri68VRsLoFk5mXypsDLrGNF8pPAi6Rw6fL3wXdJEsPls4rxldxOX4k4VPGt2kJ58rPOXoqvz0mcIqQXfp6hOFj7rLhW8fF%2FYEXaY2HxVW%2FRhdFjeVvZBGCt0mI3thpNFxjMha%2BKjRdXpvKzzm6L70aCnMDLrPrC8XblLcA1VcLHw1uAfm5VJhT%2BE%2BSHGhcG1wH8zL7wsLhXuhNr8tfDK4F%2BbH7wqXKe5HOvtN4UHjfujHXwurHNfRyiXGddLql8KRXBk46rm0uzJRpr8UNoyrpBtyqNC4Djf%2FWbgRXCftkUM74%2BKpf1b4pttUOE1xLTM5L5zX3KLCscbVuJ6fFa4UWlDodB2uVmeFmWlBodvpo8l%2BLowStKDQ8SJOop8Kt9KiwqnACdn%2BVPhi2lMY1ex0DQUnMzaXhYcEjqTVP4UL1YJC90sctfincGLaU7iL4YqZ%2FFM44NYUrlI4w4O%2FC5eCNhS632CX5V%2BF0%2FYUHhI4JNO%2FCjPTlsLCwCWT%2FVlYldyWwrXbQi6rPwqXCVpSeFJwSy%2F%2FKNxKSwqrmuGWrP4o3OuWFB4SH3uJIFrH7Sg8KrgWr4lA8xouyGkeXWX8YuAa13OCs4ng4EqI%2FewHg1aC4DjWiZwzvo5igIY6dJ6WuJk8PI9%2BNs1ieJA8E0JvOcXS7Htz%2BkXD8MBMCLSLEQ6r3akKeDQg3hEoZKAZbCv3TwobJoxzBCOvM%2Fq9HwZ%2B5GME3BhND54mpBaqwEIhEHmmC8YleyvsYSsIQz3QJc8CX2SFaYIg9BNdctTwJhkh0PY91xFdkhl4ox%2FwZhCCOtElixz%2BmDdkMQIwGV1SlQx%2F4gyvjADUkS4ZCjziNfohCmVIlywZPvEOJfzjsrIPMx6VKG87zLwr%2BC4cwDvzZDkwHsOvAQKQZdBhJjzL5WqzHHeAa7roxcC%2FATxLLbMZCdFXhp%2FNBD1FVnov1McAiyaLxvecJnkIsGiy4D7WXgvjZkyX%2FDAhCl%2BRxTeazfRSBBBnmJhwh6zOlIwAzCMeNPxJrcNMCPqAUQJvxDrMBJFMsZLAtziEvbdBtnhX4WczAY%2FJqXcU6S2GmSZGGOnS476FXgYcZiz7FsQ3WDSlCIX97R%2FyoAo6zFj2Dz098tWKLuklCMU8Eeg5CTzMhLx6Qw8JdFKBh5mRIBhZEeiYBl40Mf7CRl8Uu3pYEGhe8y1mM0Yl%2FafD8ILntZvEem5%2Fr83lMHN%2Bb0MiP04RWQy1u%2FfaaK%2FhmHm1L5p0PByT3YN2%2BG6i%2B7l3ah1mWN5mREEKZftH4VIHud7vD7MBs94SBSrUS%2Ft73h6GmYmOUZDrQvt73u43uGRLl2yE9ZGCFZrs%2FLyFI%2BbFMpsxakPhCmV6fmbGkaSgS0ZKjShk4fL83JMbyZ4umSdmTQELeXB%2Bds0Njm2LJl2ELDST8%2FOHbqSW2YxK9uSt0H7%2BsEoDLJpoZ%2Bp50MK8Oj8H7ERim82kUwpZaF7sZ7ldDzNRbRryWWg%2Fyx25KeR6TJe86bQIW5hEtjsV3C%2Ba8mRPXgvtdyrQVnleNO3MYBa2UK0sd5u4XzRNRU0paCHX0Vmhi4d%2B8kiXRAPTr8IW6jc6LyzE5zDzmKgNhS2Ujet7oiCWYUb0IwUotNwT5WAJFb9Yh5k5fc3wykIZub%2Bvrexf0hjUu%2F7XlC5mbH%2BAu6uL%2BCIA%2FEVXb9%2FTr4WzFN1leXCh45cIW1aGvxZuFO6FKn4ptKyhun0b9HlhIbgPqndeeHe%2FRLOmS4VFinuQbi4U3stt0Ca793v186OlkPb3%2Fm0EisDoOBNZC2kk6DY1Inth1cTosrhf2Qs7P3eTHn1USG%2B6%2BzeV2wurLhcm1b%2FfXfvDRCOUALcaIMA1FaFwPf9kIS0EXSTv%2F36H9L%2FpW7I0SxjdwhJ9qZAWqvsfkrUX0rBbiTKkrxbSj3v%2FtjpV%2FXv%2FPj7NmNENzDP6TiEVwt0IlIK%2BV0gnQRckC%2FpuIW1ztF%2B6pe8X0ihtf%2BAzXVNIw7YnpkOyA4VPDBpIoPCJQQMJ5D4xaKCLQnpO2zvIuCmkbcJoH5YtuSqkk3ALA0%2FkrpAKNmgXwwW5LKRZo9Emuj8jt4VUZYL2UD8qcl1I9CCMdmA1JPJQSAsxaAOTLMhPIUWN4PakmZGvQqKDMG6L5UDksZDea41b0uWC%2FBbS%2FCnH7eSTMfkuJDolGreh9YkoQCFVjxIjvFi9VRSmkKjXVwiMpdkQBSukamQ0QtIYVRSykCja5wahmHQfEQUuJDpmaZhGo9ZHIk%2BFdpu18t9o5KUg8lho1%2FPdaJStL0AhUTFJNXzR6Q97X4hCouUhF4Z7LPl%2BRhSo0K4aNaLZbZ6RZlqRAyA3Nm%2B1MnDFqHpSkBsgV%2BarLBEXkUYkW83JFZBD0fYlV4bxfWxU%2BrKNyCGQW9ViMhD5ViUbkcHkVJFbIPeW06xMRMf8%2BbhYiy6z6ZLcA3lRLbf7dZ2KNjHsYpOotF7vV8uKvAD5M1%2Buhk87zlMliTYxM%2F7GHBudiFI57ybPp%2BOc%2FAF5N14uttPDY%2Fbab8oBBhiUZX%2BdvT2MVu%2FFmLz7X0i%2BvQ3XnclgAAAAAElFTkSuQmCC&logoColor=61DAFB
[openzeppelin-url]: https://www.openzeppelin.com/
[hardhat]: https://img.shields.io/badge/Hardhat-000000?style=for-the-badge&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAADoAAAA6CAYAAADhu0ooAAAGF0lEQVR42u3ZBXDbTBoG4BwzMw8dMw0d8%2F3MECw3jHZDZSbHYWamMnOYkzIzmNkOk9%2FfclpNldWmUkqJxzvzlrveZ77dzwIP93AP93AP2Jp%2FjL46H%2FTVR6OvSYa%2BRjn6GmIw2OANW91PZi8MdZ%2FFQEspBjoVGDoziqGLmDKDp8cw0KVEf10WkP2xWYLEhx1ALQMQncEuwFqxe3ZAe%2BtD%2BRHngYFOoK8O6D0M2PY4sguwbgNsOyZ%2BbalxpAIwVfx55kMHWqsJJIOzVjEIYbFWBs986GDbCQ5yoJ0KokMrVsx8aH%2F7KQ6U2abioUkzG6lK%2FQMGmgc4UNs%2B8VBTTg%2FuRX5n5gF1Ce%2FAlH0T5nJgoAMcqHWXeKgxE1BLxh3ZC5Xk988faEr6FUyZ1zmLHOyeBN0%2BjYrmMtAHsUMtLYY2%2FBvPB2lIzoCl1E4scvDUJGi1eKi5kAFyo5GYoZL4PjugVf5lGLOuUhc5eO4h6AXAUjkNaCmDoyUf9yI%2F9ZSbjewHMOdZ6IusZHAslEELxRGhQ5m0QxH3laeDtCX9GJbCwakrUTbpaujU9KGamEdhzz5xLBRpX4ExzzZ1A8kE9FsnQbsfAxpP4sh0Qhf02SeDxKoPw5Stpi%2BqfAKolgKGZPBdFY3oy3C5Kw0n9idge8VG7KjYhLoDMlzqTmP%2Bjn9e7QohUEATtQPw%2BNAT6K6pu6dE6jawHwpTDqcRXTtbi9UrVyIsnMkqSlYiJ3UFTLfSnfOxc%2BvW0HFkRw5%2FTGTimzCXCUMyMZc4kRZNI7ZuSSBQtMybF4H3PRcjabMUtrsZE%2FPr19NhZIahivjptJDMdoA530ytpn4L8YFjphq0NdRQQaFhqxAQFIf5C6Lg5xcCb58geHr5M0g2zO%2FbjqzDuHaTGCiThmltYeiTZFSkMZ34INt1CWJjllO358JFS%2BDpHcBgBGXz2hAM3xUFBVTSN8QhgQ%2FBRPkqMRcB6mhuJRVSBzKeFxkQGAcv70AhOCLyjUGwqyRizuopUVWFISWGRNKbhGxDDKWKUseC%2FZ3bdc%2BxTlxVWnHPPAyVZQSNp29jS3oF5kycT2p2lIaKq6pW8h%2FhUFPOPf4tm0FMfKFZyttVFyyUOBdatuMYdP12mAbBibbPjq57I2i6YsbqLblUqK%2BvP%2FQXI0Vs36hyYUjdlm%2Fyd9pyQLOMmDg%2BNo5ALvKPcS5yX103g%2BLNHcs4A2Ujy6iiYtNkQSKqGtUPffTnBECTN%2FBf%2BZDVvNNDVjM4ZLmzc6ZkV8JIAp3VvawbQzeLnEjn3WFIl27lhXp5L4b1WpSIsyp95dFQY%2BYZ%2FrO5mpgwNyWaqObc%2B2futmGQQCpsdvQoWByRva3XqFWt2x0mpinJBUDzekloMaCWEhPGxsRNquYy56JWb0wjkOo%2BO7pJJJHg8BW0DiymKbU9%2BmuF72bakMQ7YXg493tz4UKpc1HbDzYT0LOqUT4YkXXyQl5ojCRQTEXNU0NN8l%2FyX2DzX3eGhq3gQH18g52LOtJyjoNUWu0EiBZ57nZe6OJF%2FhQY9Zx%2BnQ7Vb32Jv9tG803GaUShYSvZRe091smBXtOPCYZuSC7hhXp6LRYHVUl%2BQoca5fP4r4QkfOGez%2BCl7KJkqcUc6AXtqGBoZOxGakMSee37RzrUkBRGQE1ZgqCBQfEPfR0EQGMbY6Fn1MKgx89qiIv86UMj%2F0aH6lMiCKgxRRA0INAJZVNQeQAKqx3XDMK37VpZHhUpHir9uzioIWlaUKYyJbtbBCOLdzWTuGcK1SeIhbLx8glAduUR5qqHCmT%2BLrvyMPNvnzdUJhJKJmLJepTsaUXTVQuDYy%2FmS%2Fa0IHzJOjpu9kDJ%2BM0NY0L%2BnUtBybihzwG6USA0buZDYZC9CWNqgSPNMOWAjTEd0G9isLzZW7vlfjbj2J71aDq45mmGsg5KDIlHnCat7D9OpOM3FUzlXDamPEAV5e8BU%2FG4y%2BHIR7MqD963zdqVgCbeBRLHntlJ0DLidZ1LhICaclwLSIdmuzK0eMzloRqJwgPGlHz2vaQh2RWhY1BL5z14hPJf6JI2QRPjBXXUO64TydtQRP3IY8YP93AP9%2FgAkkz%2F0t6IRdMAAAAASUVORK5CYII%3D&logoColor=00000
[hardhat-url]: https://hardhat.org/
[goerli]: https://img.shields.io/badge/Goerli-DD0031?style=for-the-badge&logoColor=white
[goerli-url]: https://goerli.etherscan.io/
[alchemy]: https://img.shields.io/badge/Alchemy-blue?style=for-the-badge&logoColor=white
[alchemy-url]: https://www.alchemy.com/
[etherscan]: https://img.shields.io/badge/Etherscan-253258?style=for-the-badge&logoColor=white
[etherscan-url]: https://etherscan.io/

[next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[next-url]: https://nextjs.org/
[react.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[react-url]: https://reactjs.org/
[tailwindcss]: https://img.shields.io/badge/tailwindcss-62B9F3?style=for-the-badge
[tailwind-url]: https://tailwindcss.com
[moralis]: https://img.shields.io/badge/moralis-7D9DF0?style=for-the-badge&logoColor=6DE9DB
[moralis-url]: https://moralis.io
[web3uikit]: https://img.shields.io/badge/web3uikit-72E6E0?style=for-the-badge&logoColor=6DE9DB
[web3uikit-url]: https://web3ui.github.io/web3uikit/


[the graph]: https://img.shields.io/badge/The_Graph-23243B?style=for-the-badge&logoColor=6DE9DB
[graph-url]: https://thegraph.com/en/


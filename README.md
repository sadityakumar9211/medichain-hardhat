# Strategy
1. What do you want to do with this project?
 - Basically how do you want this project to look and work. Make a workflow. This will make the flow faster. Make it clear. 
 - How do you want to accomplish those things - use paper and pen

2. Establish a workflow for this project and make a tight schedule.
 - Every peice of work has to be completed by 8 AM Monday. That's 30 hours.

3. Read the github repo first mainly the smart contract code. 

4. Make a holistic project idea. and execute plans for all of these places. 

5. make the hardhat repository (6 hours) + make the next-js repository (frontend work) (10 hours) + make the graph repository (6 hours)  + Do the final testing (1 hours) - optional but important.

6. Execute the plan.

# SRS
1.  When a patient authorizes a doctor (using some system ***1***), the doctor can access the patients whole medical record including *vaccination*, *accident* *chronic disease*, *acute disease*. 
    1.  The authorization is only valid for 2 days and the authorization get revoked automatically in 2 days and the patient has to reauthorize again. 
    2. The doctor is the direct dealing party with the patient. In this case if the doctor gets transferred then also for a particular treatment we can conveniently pinpoint the doctor. 
    3. With the authorization the doctor gets the write access too. He can add a new treatment plan or diagnostic details. 

2. **Patient Login/ Authorization:** As this is going to be deployed to a public blockchain, EVM compatible chains preferably by design, the patients and doctors and hospitals and admin are all just a bunch of ***account addresses***. They are identified by account addresses which can be created basically out of the air and are unique. We will use metamask wallet to login user to the site on mobile or pc. 

3. Every patient can view (but not modify) only his/her own details.


#### Actors in the System 
> Beware that this is only a patient medical record management system not hospital management system. 

1. Patient 
 - Any unregistered patient can register to the system by themselves.✅
 - He can view and only view his details only. ✅
 - He can authorize/revoke a doctor for treatment/diagnostic.✅

2. Doctor
 - On given authorization from the patient, he can read and write the patient records. ✅ ✅

3. Hospital Administration (every hospital has one administrative dept.)
 - this is under whose umbrella a doctor is registered under. ✅

4. Chief of Hospital Administrations comitte[Think of a better name] (owner of the smart contract). He can view the details of the patient in discretion of the committee members. ✅
 - can register a doctor. ✅
 - can register a hospital administration. ✅


 ## Format of Patient Medical Record: 
 It is basically a json uploaded to IPFS without encrypting the hash, but it contains the encrypted IPFS hash of PDF file and/or image. This is full details of the record. 

# Security
Note: Every transaction data is public so it must be encrypted if it is public. Basically we'll use IPFS to store any and all informations related to patients and doctors and hospitals(if necessary) using json. PIN JSON file on IPFS in pinata. And encrypt the CID using a unique phrase(basically password) set by the patient and it will be encrypted locally by again entering the passphrase while viewing.  

- unidentified account address is not given access to the site. The site is only displaying content if the patient is registered. If the patient is not registered then he is given option to register by providing required information.
    - Aadhar Number
    - Name
    - Profile Picture
    - DOB
    - Address
    - E-mail
    - Phone Number
    - Blood Group
        - Save date of registration and display in the patient's record to ensure the reliability of information of patient's medical record system.

- For every thing I need a homepage (patient, doctor, admin, hospital, unidentified accounts). And actual homepage of the whole project. 
    

- Making and implementing these forms are gonna take time.


## Points of Improvements
 - Patient can revoke the approve status of doctor anytime he/she wants. 
    - On modification, it will automatically be revoked in two days or when the patient wants. 
        - The difficulty is that I am not very cool at using checkData and performData arguments conveniently.
        - I'm not able to pinpoint the patientAddress and doctorAddress to revoke the approval from. Also, this will require multiple checkUpkeeps to run for every patient-doctor combination. This is also not possible without keeping doctors and patients addresses in an array. 
        - Keeping these in array on smart contract is very expensive. 




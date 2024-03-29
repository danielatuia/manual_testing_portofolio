# Final Project Manual Testing - ITFactory Course

The scope of my final project is to understand the new concepts better, to use all the knowledge gained so far throught the Manual Testing ITFactory Course and to apply them in practice, using a live application.

The application that I used for the testing process: https://opensource-demo.orangehrmlive.com/

The related API documentation can be found here: https://orangehrm.github.io/orangehrm-api-doc/

The final project has two distinct sections: **Testing section** and **SQL section**.

The tools I used for this project: JIRA, Zephyr Squad, Postman, MySQL Workbench.

# Functional Specifications

For my final project I chose Qualifications – Work Experience section. The Story is created in JIRA and describes the functional specifications of the employee Work Experience sections. 


***As a user I want to be able to add my Work Experience.***

![Story](https://user-images.githubusercontent.com/56273858/167291946-5a425123-3129-4ca7-9f0c-bc1ecb817815.jpg)

![Add Work Experience](https://user-images.githubusercontent.com/56273858/208245068-be28b8b1-6c0c-4fb1-b2e2-f1f0d4df0847.jpg)


# 1. Testing Section

## 1.1. Test Planning phase

The primary objective for the Test Planning phase is to give information that describe all details of testing and how will be tested the Qualifications - Work Experience section, from the OrangeHRM application.

The Test Plan offer a clear guide that identifies the features to be tested, the types of testing to be performed, the persons responsible for testing, the resources and the schedule required to complete testing and the risks associated.

### 1.1.1. Roles assigned to the project and persons allocated

Roles needed for the project are allocated:
- Project manager - Ovidiu Iftime  
- Product owner - Ramona Ionescu
- Software developer - Gabriela Irimia
- QA Engineer - Daniela Tuia 

### 1.1.2. Entry criteria defined

Entry criteria defined, are closely related to the purpose of the Test Plan. They are the prerequisite items that must be completed before testing begin:
- functional specifications are defined, according to business requirements
- complete understanding of the application flow is required and, for this, the requirement document must be available
- a JIRA account is created

### 1.1.3. Exit criteria defined

The exit criteria defined establish when testing activities can be declared complete. The following Exit criteria must be met in order to conclude testing:
- all tests have been executed 
- all resolved bugs have been re-tested and approved by the QA team
- number of unresolved bugs is insignificant or they have low priority 
- there are no other major risks for the project
- exploratory regression testing must be performed on the My Info module, which includes the Qualifications – Work Experience section 
- deadline is reached – 01.06.2022

### 1.1.4. Test scope
For minimazing the potential threats, all the features of the Qualifications – Work Experience section which were defined in software requirements need to be tested. 
So:
- **in scope testing**: Blackbox Functional Testing, Non-functional Testing (more exactly - Usability Testing), GUI Testing and API Testing - will be performed 
- **out of scope**: Whitebox Testing, Performance Testing, Integrations of the dependents module with other modules - will not be performed

### 1.1.5. Risks detected
Initial project risks were detected and mitigated, for instance plan training course or set test priority.
The following risks have been detected:
- project risks - lack of experience of the QA team, short trial for JIRA/Zephyr Squad, gaps in the API testing knowledge
- product risks - validation constraints on the fields might be too restrictive to the end-user  

### 1.1.6. Evaluating entry criteria

The entry criterias defined in the Test Planning phase have been achieved and the test process can continue.

## 1.2. Test Monitoring and Control phase
Periodic reports are generated in order to track current progress of the testing process. Based on results of the test monitoring process and in case of major problems, control measures could be taken: test activities are prioritized, test schedule is revised and other changes related to testing activities are made in order to improve the quality and efficiency of future testing process. 
The following status report was generated after 47% of the test cases were executed, on May 6th, 2022:

![Test Summary](https://user-images.githubusercontent.com/56273858/167906900-2a261e07-5974-4af4-8e1e-e1fa505587ea.jpg)
![Daily Test Execution Progress](https://user-images.githubusercontent.com/56273858/167906944-4c426c1f-e6d9-48f0-921a-029790a28423.jpg)
![Execution list](https://user-images.githubusercontent.com/56273858/167907083-6cca4d28-2666-4a3c-a6ba-566fec5df4ed.jpg)

## 1.3. Test Analysis phase
The testing process will be executed based on the above business requirement for the Qualifications - Work Experience section, more exactly ***The user should be able to add his Work Experience.***

The following test conditions were identified:
- enter data only for mandatory fields and check that the Work Experience record is created or edited
- enter data for all available fields and check that the Work Experience record is created or edited 
- leave mandatory fields empty and check that the Work Experience record cannot be created or edited
- view all records about Work Experience added in a list 
- check all validation constraints for the fields 

## 1.4. Test Design phase
Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases are boundary value analysis, equivalence partitioning and use case testing.

**Test Cases:**

![Test_cases](https://user-images.githubusercontent.com/56273858/167915185-79e2786a-eaed-4ca9-9dbf-0b6a6c26ada0.jpg)

The test cases steps can be viewed here: 
[Employee_work_experience_test_cases.xlsx](https://github.com/danielatuia/manual_testing_portofolio/files/8673249/Employee_work_experience_test_cases.xlsx)

For the employee Work Experience API,  the following tests will be performed for each method:

![API_test_checklist](https://user-images.githubusercontent.com/56273858/168833294-b2a8e9d3-3c14-41d2-89c3-43e65047941e.jpg)

## 1.5. Test Implementation phase

The following items must be up to date, so that the test execution phase can start:

 - testing environment is up and running: https://opensource-demo.orangehrmlive.com/
 - access to the testing environment is given with the following credentials: Username : Admin | Password : admin123
 - Cycle Summary was created in Zephyr Squad
 - test cases were added to the Cycle Summary
 - Postman collection with the dependents API methods was created
 - authorization token was created for accessing the API

Risk identified in this phase: the application is unstable and has moments when logging into https://opensource-demo.orangehrmlive.com/ is not allowed.

## 1.6. Test Execution phase
Test Execution phase is done based on the test planning and test cases prepared in Zephyr Squad.

Here can be verified the status of executed test cases on the created Cycle Summary: [Employee_work_experience_cycle_summary_execution.xlsx](https://github.com/danielatuia/manual_testing_portofolio/files/8838320/Employee_work_experience_cycle_summary_execution.xlsx)

A complete bug report can be found here:
[Employee_work_experience_bug_report.pdf](https://github.com/danielatuia/manual_testing_portofolio/files/8682066/Employee_work_experience_bug_report.pdf)

For failed tests, bugs have been created in Jira with a priority level set:
- for the *From* and *To* fields date format is not dd-mm-yyyy - medium priority, minor severity
- user can save action when *From* and *To* fields input is a future date - medium priority, minor severity

API tests are executed in Postman based on the checklist mentioned above. The collection used can be found here:
[Postman_collection of requests created for the Employee Work Experience API.json](https://github.com/danielatuia/manual_testing_portofolio/blob/main/Final%20Project/Postman_collection%20of%20requests%20created%20for%20the%20Employee%20Work%20Experience%20API.json)

Failed API tests:
- (POST) employee work experiece can be saved when using all accepted parameters - failed because of the date format 
- (PUT) employee work experiece can be updated successfully with all accepted parameters - failed because of the date format 
- (PUT) an error is returned when sending invalid data type for "seqId" parameter - failed because the inputs accepted are not only numbers 
- (DELETE) an error is returned when sending invalid data type for "seqId" parameter - failed because the inputs accepted are not only numbers 

Regression Testing is executed after the bugs are fixed, to confirm that changes in the code has not affected the existing features and the functionalities work fine.

## 1.7. Test Completion phase

As the Exit criteria were satisfied as mentioned above, testing can be concluded:
- 23 test cases were planned and all of them were executed
- 21 test cases were passed and 2 were failed
- 2 bugs were detected with medium priority

The traceability matrix was generated and can be found here:
[Traceability_Matrix.xlsx](https://github.com/danielatuia/manual_testing_portofolio/files/8689633/Traceability_Matrix.xlsx)

Test execution chart was generated and the final report shows that a total of 2 tests out of a total of 23 failed.

![Test Execution Chart](https://user-images.githubusercontent.com/56273858/168334724-aa8cbef3-609a-49ec-8b0b-754409990a86.jpg)

![Execution_list](https://user-images.githubusercontent.com/56273858/168335142-cf415d9f-0944-46ed-ae31-57e2ad2a32d0.jpg)

# 2. SQL section

The database created is named *orangehrm*. The tables are named *employees* and *workexperience*, created with all the columns needed to save information. Inside the sql file are performed different queries: [workExperience.sql](https://github.com/danielatuia/manual_testing_portofolio/blob/main/Final%20Project/workExperience.sql)


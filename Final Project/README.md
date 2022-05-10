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


# 1. Testing Section

## 1.1. Test Planning phase

The primary objective for the Test Planning phase is to give information that describe all details of testing and how will be tested the Qualifications - Work Experience section, from the OrangeHRM application.

The Test Plan offer a clear guide that identifies the features to be tested, the types of testing to be performed, the persons responsible for testing, the resources and the schedule required to complete testing and the risks associated.

### 1.1.1. Roles assigned to the project and persons allocated

Roles needed for the project are allocated:
- Project manager - Ovidiu  
- Product owner - Ramona
- Software developer - Gabriela
- QA Engineer - Daniela 

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

#### 1.1.5. Risks detected
Initial project risks were detected and mitigated, for instance plan training course or set test priority.
The following risks have been detected:
- project risks - lack of experience of the QA team, short trial for JIRA/Zephyr Squad, gaps in the API testing knowledge
- product risks - validation constraints on the fields might be too restrictive to the end-user  

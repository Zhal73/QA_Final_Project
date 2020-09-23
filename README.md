# Spring Pet Clinic - QA Final Project
_________________________________________________________________________________________________________________________________________________________________
## Index
* [Project Brief](#the-project-brief)
  - [Project Requirements](#requirements)
  - [Proposed Solution](#proposed-solution)
  - [MoSCoW](#moscow-prioritisation)
* [Architecture](#architecture)
  - [Project Tracking](#project-tracking)
  - [Risk Assessment](#risk-assessment)
  - [CI Pipeline](#ci-pipeline)
  - [AWS Pipeline](#aws-pipeline)
  
* [Deployment](#application-deployment-process)
* [Future Improvements](#future-improvements)
* [Honorable Mentions](#honorable-mentions)
* [Authors](#authors)


_________________________________________________________________________________________________________________________________________________________________
## The Project Brief
*-Taken directly from the Final Project specification on Community-*

You will be working with two externally developed applications.

They are well documented applications for the ‘Spring Pet Clinic’ domain, one of which serves as a front end client using AngularJS and the other as an API using Java.

In short, **you will be expected to deploy this application.**

### Requirements
- You will need to plan, design and implement a solution for automating the development workflows and deployments of this application. As part of your final deliverable you will need to discuss the project in a presentation and demonstrate these workflows.

- Carefully select the appropriate tools in order to deploy the application. There are no restrictions or requirements on which ones to use; you should decide which you feel are most appropriate and justify their use.

- Multiple Environment support: How can a developer test new features on an environment before merging their changes to the main branch?

- Configure something where changes on the GitHub repository automatically build and deploy to testing and live environments

- Running costs. What are your monthly estimates and can they be improved?

### Proposed Solution
Our team's approach to this task was agile-driven and as efficient as possible. After assigning roles within the team, we were designated tasks that played to our strengths; for example, if a team member was particularly confident using Kuberentes, they were happily assigned that task. This planning made the project as efficient as it was, this is evident as Sprint 1 was actually completed earlier than we had previously imagined. 

Incorporating agile fundamentals within this project was like second nature, almost instinctive. The planning process set out a clear plan, however this was of course adaptable and we were aware of, and prepared for the high possibility that this plan was to change as the project developed.


### MoSCoW Prioritisation
This acronymical form of documentation was used to order tasks and to initially meet the MVP. It's used to ensure that the essential requirements are met, so that further development can take place. The prioritisation was as follows:

 ![](/images/Moscow.JPG)
_________________________________________________________________________________________________________________________________________________________________
## Architecture

### Project Tracking
* [Jira](https://omris-elda.atlassian.net/jira/software/projects/QFP/boards/7/backlog) - Project Tracking
  - The Jira Board was essentially the backbone of this project. It defined all tasks, which tasks should be completed when (via the use of sprints) and frequent 
    checks ensure that tasks weren't forgotten or missed. We first intialised the first sprint which looked like this:
    
  ![](/images/Final-Project-First-Jira-Board.png)
    
     The initial sprint was designed to deploy the application itself, each member of the team was assigned a particular task and there were 3 standups a day in order to ensure that all tasks were being completed thoroughly and to the best of the team's ability. 
    
  - After the first sprint had been completed, with the deployment of the application fully configured, sprint 2 was intialised, which looked like this:
  
    ![](/images/secondsprint.png)
  
    This sprint included the in-depth analysis of the final project, along with a few extensive suggestions that were added once the Sprint Review and Retrospective has been completed. Once the deployment had been successful, each step had to be documented in order to show not only the process, but the progress that the team made during the course of this project. 
    
    
* [Git](https://github.com/Zhal73/QA_Final_Project) - VCS
  - This is the GitHub Respository that was maintained and amended throughout the entirety of the project

### Risk Assessment

Below is the Risk Assessment that was created in association with this project:

![](/images/Risk_assessment.jpg)

### CI Pipeline

Here is a diagram of the CI Pipeline that the deployment process followed:

![](/images/FP-Pipeline.jpg)

### AWS Pipeline

This is an visual representation of the infrastructure that was created using AWS:

![](/images/AWS_Infrastructure.png)
_________________________________________________________________________________________________________________________________________________________________

## Testing
Due to the nature of the project, the tests were all written previously. As a team, we just had to make sure the testing software was installed, and that all the tests ran and passed successfully. This project used **Maven** as its testing software.

Our team decided to not tamper with the tests as the MVP is the priority, once this had been successful then adjustments can be made to include other forms of testing and an extensive report. However, one of the agile fundamentals is to hvae a working application over a complex one. Thus, we deemed it unwise to edit these tests as they were correctly written, and all of them passed the testing stage anyway - there was no initial need to amend them.

_________________________________________________________________________________________________________________________________________________________________
## Application Deployment Process
### Technologies Used and Overview of Development

#### Prerequisites

#### Installation

#### Deployment Process

_________________________________________________________________________________________________________________________________________________________________
## Future Improvements
For this project, our aim was to deploy the given application. As we didn't write the application itself, it's difficult to indicate what could be improved and where. However, in terms of deployment, we agreed that if given more time to perfect this deployment process, we would implement integration testing. Through the use of selenium, this is a way of ensuring that every aspect of the application is accounted for, and that there are no faults within the application itself.
_________________________________________________________________________________________________________________________________________________________________
## Honorable Mentions
* QA's own Luke Benson & Harry Volker - Trainers
* QA Courseware
* The JulyDevOps Cohort
_________________________________________________________________________________________________________________________________________________________________
## Authors
* Domenico Gagliano
* Edmund Prickett
* Sithembiso Ngwenya
* Javas Sandhu
_________________________________________________________________________________________________________________________________________________________________

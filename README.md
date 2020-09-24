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
  - [Kubernetes Cluster](#kubernetes-cluster)

* [Testing](#testing)
* [Deployment](#application-deployment-process)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Process](#deployment-process)
  - [Monitoring](#monitoring-and-costs)
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

One clear example of this ability to adapt was shown during the first sprint. During the configuration of the Ansible Playbook, the team member assigned to this task was having difficulty installing Terraform using Ansible - after some help from the team, we agreed to install Terraform using a script in the Jenkinsfile. This went against the original plan, but we were agile and efficient as this decision allowed the Ansible engineer to move on, instead of being stuck on that issue for a while. This complication did not stop the development process as we were able to encounter this error and adjust accordingly - thus, being agile.


### MoSCoW Prioritisation
This form of documentation was used to order tasks and to initially meet the MVP. It's used to ensure that the essential requirements are met, so that further development can take place. The prioritisation was as follows:

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

### Kubernetes Cluster

This is an illustration of the Kubernetes Cluster used in the project:

![](/images/architecture.jpg)
_________________________________________________________________________________________________________________________________________________________________

## Testing
Due to the nature of the project, the tests were all written previously. As a team, we just had to make sure the testing software was installed, and that all the tests ran and passed successfully. This application used **Maven** as its testing software.

Our team decided to not tamper with the tests as the MVP is the priority, once this had been successful, then adjustments can be made to include other forms of testing and even possibly an extensive report. However, one of the agile fundamentals is to have a working application over a complex one. Thus, we deemed it unwise to edit these tests as they were correctly written, and all of them passed the testing stage anyway - there was no need to amend them.

_________________________________________________________________________________________________________________________________________________________________
## Application Deployment Process
#### Prerequisites
* 1 GCP Virtual Machine (We used Ubuntu 20.04 LTS) 
* 1 GCP MySQL Database (We used MySQl 5.7)
* VM with port 8080 access for Jenkins
* Enable connection on DB using VM's IP Address

#### Installation
* [Install Jenkins on VM](https://www.jenkins.io/doc/book/installing/#linux)
* Add sudo privileges for Jenkins using:
  ```bash
  sudo visudo
  ```
  Inside the sudoers file, add the following code:
  ```bash
  jenkins ALL=(ALL:ALL) NOPASSWD:ALL
  ```
  Check that this worked by changing to jenkins user and running sudo command:
  ```bash 
  sudo su - jenkins
  sudo echo "Hello I'm jenkins using sudo!"
  exit
  ```
* Configure Pipeline with Jenkinsfile on [this repo](https://github.com/Zhal73/QA_Final_Project)
* Set Environment Variables in **Global Credentials** section
* Configure a Webhook using:
  
  ```bash
  (http://vmIPaddress:8080/github-webhook/)
  ```
  
  Content Type:
  ```bash
  application/json
  ```
  
  Events:
  - [x] Just the push event


#### Deployment Process
Once the Webhook is configured, the deployment process starts once something is pushed to the GitHub Repo. Assuming all steps have been followed correctly, the pipeline should build the application successfully. This is a fully automated process, so the application builds by the press of a single button (via a WebHook or physically starting the build in Jenkins).

Once the build is successful, and all aspects have been created, the application is up and running! Access the application via the IP Address of the Load Balancer and there you can explore the Spring Pet Clinic.

#### Monitoring and Costs
In order to monitor the various resources that are used in this project, we set up a few CloudWatch events to monitor aspects such as:
  - Excessive network traffic (signs of a DDOS attack)
  - High CPU usage (which could require a new VM to be spun up to help take the load off of the others)
  - Alarms set when the cost was approaching the budget that was set on a monthly basis

This allowed us to ensure that we're utilizing our resources as effectively as possible with as little wastage as possible.

We also estimated that this project cost us no more than £1 a day, and so the monthly costs should be <£30
_________________________________________________________________________________________________________________________________________________________________
## Future Improvements
For this project, our aim was to deploy the given application. As we didn't write the application itself, it's difficult to indicate what could be improved and where. However, in terms of deployment, we agreed that if given more time to perfect this deployment process, we would implement integration testing. Through the use of Selenium, this is a way of ensuring that every aspect of the application is accounted for, and that there are no faults within the application itself.

We did however attempt to secure the environment variables using a secret.yaml file within Kubernetes. This was to ensure that the application was deployed with the highest level of security we can offer. Unfortunately, this was a function that was not corrected during Sprint 2, and would therefore be added to future improvements. Again, a working application takes priority over a complex one, and this attitude was maintained throughout development.

Furthermore, we agreed that some form of authentication would prove useful, in terms of connecting to the database. It's simply not practical or secure to have the database accessible by anyone - therefore, a login would be required in order to access the data.


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

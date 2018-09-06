# Client Library Generation

This guide demonstrates how to setup the client system(installation of dependencies) and also how to generate the client code using the script generate.sh 

## Setup

Before running generate.sh please make sure that the following are installed:

 ### Apache Maven
 Install maven:
  ```
  yum install maven
  ```
 ### Java;
 Install java:
 ```
 yum install java
 ```
 ## Running the script
 Run the generate.sh script in the Generate_Client directory with the source yaml as initial argument and the directory where the code should be generated to as the other argument
 ```
 cd Generate_Client
 ./generate.sh <yaml file> <destination directory>
 
 
 ```
 
 
 

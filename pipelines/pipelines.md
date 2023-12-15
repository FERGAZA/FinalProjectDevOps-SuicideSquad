# PIPELINES:

## Prep:

* Upload the git repositories for the back end and front end in *dev.azure.com*.
* Have the following resources deployed on azure:
    1. Static web app (front end).
    2. Web app (back end).
    3. Postgres Server and Database.
    4. VM (Sonarqube set up).

## Front Pipeline:

You will need to create a new config folder and config.jason file with the url of the API web service for the front and the back to connect.

![Alternate Text](./images/Screenshot%202023-12-14%20at%2011.26.26%202.png)

After this, the only tasks required for the front is to Archive the files and publish them to then deploy the artifact in the static web created beforehand. 

![Alternate Text](./images/Screenshot%202023-12-15%20at%2011.35.27.png)

## Back Pipeline:

The backend has more steps than the front:
* Prepare sonarqube
* Install .net sdk and use runtime
* Build the .csproj files
* Run unit tests to later analyse qith sonarqube
* Sonarqube analyze and publish
    1. You have to create a project within the sonarqube app (it needs to be previosly installed and run within the mentioned VM)
* Create the .zip and publish the artifact.
* Azure web deployment

![Alternate Text](./images/Screenshot%202023-12-15%20at%2011.35.12.png)
![Alternate Text](./images/Screenshot%202023-12-15%20at%2011.35.19.png)

(test is repeated twice because of the screenshots)

## Sonarqube:

Go to the sonarqube server that you set up in the port 9000 ( make sure to allow nsg rulo inbound on port ). Login with user: admin and password: admin ( you can change later ).

Create project and import from devops platform. Import from azure devops and make sure to get the token from sonarqube.

![Alternate Text](./images/Screenshot%202023-12-15%20at%2012.06.13.png)

Go to service connexion in azure and connect to sonarqube through devops too. ( grant access permission to all pipelines.)

![Alternate Text](./images/Screenshot%202023-12-15%20at%2012.07.42.png)

![Alternate Text](./images/Screenshot%202023-12-15%20at%2012.07.46.png)

## Postgress:

First create a postgress server resource and within that create your database.

![Alternate Text](./images/Screenshot%202023-12-14%20at%2012.57.09.png)
![Alternate Text](./images/Screenshot%202023-12-14%20at%2011.26.51.png)

Make sure you allowed the server to connect by specifying the ip or disabling the firewall.

![Alternate Text](./images/Screenshot%202023-12-14%20at%2011.26.40.png)

Within the web server configuration go to application setting and inset the connection string to the postgress database you previosly created.

![Alternate Text](./images/Screenshot%202023-12-14%20at%2011.27.18.png)

![Alternate Text](./images/Screenshot%202023-12-14%20at%2011.27.26%202.png)

## The Web is Up and Running:
Front:
![Alternate Text](./images/Screenshot%202023-12-14%20at%2012.59.44.png)
API:
![Alternate Text](./images/Screenshot%202023-12-14%20at%2012.59.57.png)

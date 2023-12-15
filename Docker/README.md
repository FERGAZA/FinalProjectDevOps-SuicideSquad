## DOCKER

## Prep: 


* Prepare the Docker setup by installing the Docker dependencies.
  1  sudo apt update
  4  git clone git@ssh.dev.azure.com:v3/ironhack-devops/Team2/Basic3Tier.API

(other commands here were related to install dotnet sdk and other dependencies)

  52  sudo apt install docker docker.io
  53  sudo apt install docker-compose
  54  sudo usermod -aG docker squad

* After cloning the repositories and installing docker docker.io and docker-compose, we created the images used as a template to create the docker containers inside our VM:

 ![Alternate_Text].(images/Captura de pantalla 2023-12-15 111648.png)

 ![Alternate_Text].(images/Captura de pantalla 2023-12-15 111724.png)

docker build -t .
   69  docker build -t api .
   70  sudo docker build -t api .
   71  cd ..
   72  cd Basic3Tier.Ui
   73  cd Basic3Tier.UI
   74  sudo docker build -t ui .
   75  docker login -u aheroine
   76  sudo docker login -u aheroine 
   77  docker images

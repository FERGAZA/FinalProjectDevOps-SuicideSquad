## DOCKER

## Prep: 

1. Prepare the Docker setup by installing the Docker dependencies.
    - `sudo apt update`
    - `git clone git@ssh.dev.azure.com:v3/ironhack-devops/Team2/Basic3Tier.API`

<<<<<<< HEAD
* Prepare the Docker setup by installing the Docker dependencies.
  1  sudo apt update.
  4  git clone git@ssh.dev.azure.com:v3/ironhack-devops/Team2/Basic3Tier.API.
=======
   (Otros comandos aquí están relacionados con la instalación de dotnet sdk y otras dependencias)
>>>>>>> ffd5ac4ffb2f91aa4984fd1b645ebe083300277d

2. Install Docker and Docker Compose:
    - `sudo apt install docker docker.io`
    - `sudo apt install docker-compose`
    - `sudo usermod -aG docker squad`

<<<<<<< HEAD
  52  sudo apt install docker docker.io.
  53  sudo apt install docker-compose.
  54  sudo usermod -aG docker squad.
=======
3. After cloning the repositories and installing docker docker.io and docker-compose, we created the images used as a template to create the docker containers inside our VM:
>>>>>>> ffd5ac4ffb2f91aa4984fd1b645ebe083300277d

   ![Alternate_Text](./images/Captura%20de%20pantalla%202023-12-15%20111648.png)
   ![Alternate_Text](./images/Captura%20de%20pantalla%202023-12-15%20111724.png)

<<<<<<< HEAD
 ![Alternate_Text].(images/Captura de pantalla 2023-12-15 111648.png).

 ![Alternate_Text].(images/Captura de pantalla 2023-12-15 111724.png).

docker build -t .
   69  docker build -t api .
   70  sudo docker build -t api .
   71  cd .. .
   72  cd Basic3Tier.Ui.
   73  cd Basic3Tier.UI.
   74  sudo docker build -t ui ..
   75  docker login -u aheroine.
   76  sudo docker login -u aheroine .
   77  docker images.
=======
4. Build Docker images:
    - `docker build -t .`
    - `docker build -t api`
    - `sudo docker build -t api`
    - `cd ..`
    - `cd Basic3Tier.Ui`
    - `cd Basic3Tier.UI`
    - `sudo docker build -t ui`

5. Docker login:
    - `docker login -u aheroine`
    - `sudo docker login -u aheroine`

6. Check Docker images:
    - `docker images`

>>>>>>> ffd5ac4ffb2f91aa4984fd1b645ebe083300277d

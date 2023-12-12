## Commands

```
    1  sudo apt update
    2  az cli --version
    3  sudo apt install azure-cli
    4  git clone git@ssh.dev.azure.com:v3/ironhack-devops/Team2/Basic3Tier.API
    6  az login
    7  git clone https://ironhack-devops@dev.azure.com/ironhack-devops/Team2/_git/Basic3Tier.API
    8  git clone https://github.com/IbaiGallego/DevOpsFinalProject.git
   10  cd DevOpsFinalProject/
   12  sudo apt-get update &&   sudo apt-get install -y dotnet-sdk-7.0
   13  sudo apt-get update && \
   15  declare repo_version=$(if command -v lsb_release &> /dev/null; then lsb_release -r -s; else grep -oP '(?<=^VERSION_ID=).+' /etc/os-release | tr -d '"'; fi)
   17  wget https://packages.microsoft.com/config/ubuntu/$repo_version/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
   19  sudo dpkg -i packages-microsoft-prod.deb
   21  rm packages-microsoft-prod.deb
   23  sudo apt update
   25  sudo apt install aspnetcore-runtime-8.0
   27  sudo apt install dotnet-sdk-8.0
   28  dotnet restore Basic3Tier.Core/Basic3Tier.Core.csproj 
   29  dotnet restore Basic3Tier.Infrastructure/Basic3Tier.Infrastructure.csproj 
   30  dotnet restore Basic3TierAPI/Basic3TierAPI.csproj
   31  dotnet restore Basic3Tier.Core/Basic3Tier.Core.csproj 
   32  dotnet build Basic3TierAPI/Basic3TierAPI.csproj
   33  dotnet publish Basic3TierAPI/Basic3TierAPI.csproj
   34  dotnet run Basic3Tier.API/Basic3TierAPI/bin/Debug/net7.0/Basic3TierAPI.dll
   35  dotnet run /home/squad/DevOpsFinalProject/Basic3Tier.API/Basic3TierAPI/bin/Debug/net7.0/Basic3TierAPI.dll
   36  dotnet run
   37  cd Basic3TierAPI/
   38  dotnet run
   39  sudo apt install aspnetcore-runtime-7.0
   40  dotnet run
   41  sudo apt install nginx -y
   43  sudo ufw allow 'Nginx HTTP'
   45  systemcl status nginx
   46  systemctl status nginx
   51  sudo apt update
   52  sudo apt install docker docker.io
   53  sudo apt install docker-compose
   54  sudo usermod -aG docker squad
   60  cd DevOpsFinalProject/
   61  cd Basic3Tier.API/
   65  sudo docker build -t api .
   68  cd Basic3Tier.UI
   69  sudo docker build -t ui .
   80  sudo docker run -d ui
   83  sudo docker pull postgres
   91  sudo docker run -d   --name postgres-container   -e POSTGRES_USER=postgres   -e POSTGRES_PASSWORD=admin123   -e POSTGRES_DB=basic3tier   -v /path/on/host:/var/lib/postgresql/data   postgres:latest
   97  sudo docker run -d api

```
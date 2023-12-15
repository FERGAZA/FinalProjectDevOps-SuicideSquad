Commands Used:

## 1.- Install Terraform: 

```wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```

## 2.- Initialize Terraform backend in the given directory:

```terraform init```

## 3.- Preview the changes: 

```terraform plan``` ---------> Generates an execution plan for your Terraform configuration without applying changes

## 3.- Apply them using:

```terraform apply -auto-approve``` --------> Create the infrastructure created using the given Terraform configuration

-------------------------------------------------------

### Format the terraform files:

```terraform fmt ``` ------->  Format the terraform config files

### In case you want to destroy the resources previously made using the terraform configuration:

```terraform destroy``` -------> Destroy the infrastructure created using the Terraform configuration

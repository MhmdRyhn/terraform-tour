# Terraform Tour

This repository shows code (IaC) about how to create infrustructure maintaining three tier architecture in AWS platform.


**NOTE:** This repository is being updated continuously, because this repo is being used for learning purpose.


# Setting Up the Project


## Install Terraform
- You can skip the installation if **terraform** is already installed in your system. This project assumes that you are using **Ubuntu Linux Distro**. See terraform doc to install for other platforms (OS).
- Download and unzip **Terraform** using the following command. Terraform is distributed as binary.
  ```
  sudo apt-get update
  sudo apt-get install wget unzip
  sudo wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
  sudo unzip ./terraform_0.12.24_linux_amd64.zip –d /usr/local/bin
  ```
- Verify that Terraform is installed properly. This should give you **Terraform v0.12.24** as the output.
  ```
  terraform -v
  ```

## Clone the Repository
Clone the repository and the enter into the repository.
```
https://github.com/MhmdRyhn/terraform_tour.git
cd terraform_tour/
```

## Initialize Terraform
```
terraform init
```

## Viewing Plan and Applying the Plan
Before executing this step setup all the **credentials** and fill the **variable_value.tfvars** file according to **variable.tf**.

- To see the plan the terraform will execute
  ```
  terraform plan
  ```
- To execute the plan
  ```
  terraform apply
  ```
- Now, wait untill the plan finishes executing. After the plan finishes executing, check in the resources in your AWS console.
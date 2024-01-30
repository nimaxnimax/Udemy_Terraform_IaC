# Add Terrafrom APT Repository
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

# Install Terraform using Apt Command
sudo apt update -y
sudo apt install terraform -y

# Test Terraform Installation
terraform version

# Update Your System
sudo apt update -y
sudo apt upgrade -y

# Install Dependencies
sudo apt install ca-certificates curl apt-transport-https lsb-release gnupg -y

# Download and Install the Microsoft Signing Key
curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null

# Add Azure CLI Apt Repository
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=`dpkg --print-architecture` signed-by=/etc/apt/trusted.gpg.d/microsoft.gpg] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | sudo tee /etc/apt/sources.list.d/azure-cli.list

# Install Azure Cli on Ubuntu
sudo apt update
sudo apt install azure-cli -y

# Validate Azure Cli Installation
az --version

# sudo az login --use-device-code
sudo az login
# sudo az account list
# sudo az account set --subscription xxxxa71a-ed0b-xxxx-a34f-ea1c3ed3xxxx


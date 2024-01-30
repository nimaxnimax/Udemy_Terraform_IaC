# Create virtual machine in Azure

# Initialize Terraform
terraform init

# Validate the configuration file
terraform validate

# Rewrites config files to canonical format
terraform fmt

# Create a Terraform execution plan
terraform plan -out main.tfplan

# Apply a Terraform execution plan
terraform apply main.tfplan

terraform show

terraform show | Select-String "public_ip"

terraform output

terraform output public_ip_address

terraform output admin_password

# terraform destroy


# Create storage account for boot diagnostics in azure

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

# terraform destroy

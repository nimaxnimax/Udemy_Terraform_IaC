# Create (and display) an SSH key

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

# Be careful with this info
terraform output -raw tls_private_key > id_rsa

# terraform destroy

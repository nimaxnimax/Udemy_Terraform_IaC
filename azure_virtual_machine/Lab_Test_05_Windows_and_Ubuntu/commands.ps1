# Create public IPs in azure

# Initialize Terraform
terraform init

# Create a Terraform execution plan
terraform plan -out main.tfplan

# Apply a Terraform execution plan
terraform apply main.tfplan

# terraform destroy

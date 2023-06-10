# Terraform Multicloud Billing Alerts

This wrapper module creates billing alerts for AWS accounts, Azure Management Groups, and Google Cloud billing accounts. This module does NOT create the Azure Management Groups, enable applicable Google Cloud APIs, organize AWS accounts into an organization, or similar. 

[This module uses `binbashar/cost-billing-alarm/aws` for AWS billing alerts.](https://github.com/binbashar/terraform-aws-cost-billing-alarm/blob/master/main.tf)

[An example Terraform variable file is provided at `vars/example.tfvars`.](./vars/example.tfvars)

## Usage

```sh
terraform init
tf apply -var-file=vars/example.tfvars 
tf destroy -var-file=vars/example.tfvars
```

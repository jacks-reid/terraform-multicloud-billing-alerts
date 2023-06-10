# main.tf

module "azure" {
  source              = "./azure"
  management_group_id = var.azure_management_group_id
  currency_units      = var.azure_currency_units
  threshold_percent   = var.azure_threshold_percent
  billing_budget_name = var.azure_billing_budget_name
  contact_emails      = var.azure_contact_emails
  start_date          = var.azure_start_date
  end_date            = var.azure_end_date
}

module "aws" {
  source           = "./aws"
  aws_account_id   = var.aws_account_id
  currency_code    = var.aws_currency_code
  currency_units   = var.aws_currency_units
  create_sns_topic = var.aws_create_sns_topic
}

module "gcp" {
  source                     = "./gcp"
  project                    = var.gcp_project
  billing_project            = var.gcp_billing_project
  billing_account            = var.gcp_billing_account
  currency_code              = var.gcp_currency_code
  currency_units             = var.gcp_currency_units
  threshold_percent          = var.gcp_threshold_percent
  billing_budget_name        = var.gcp_billing_budget_name
  email_notification_address = var.gcp_email_notification_address
}

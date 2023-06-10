# variables.tf
variable "azure_management_group_id" {
  type = string
}

variable "azure_currency_units" {
  type = number
}

variable "azure_threshold_percent" {
  type = number
}

variable "azure_billing_budget_name" {
  type = string
}

variable "azure_contact_emails" {
  type = list(any)
}

variable "azure_start_date" {
  type = string
}

variable "azure_end_date" {
  type = string
}

variable "aws_account_id" {
  type = string
}

variable "aws_currency_code" {
  type = string
}

variable "aws_currency_units" {
  type = string
}

variable "aws_create_sns_topic" {
  type = bool
}

variable "gcp_project" {
  type = string
}

variable "gcp_billing_project" {
  type = string
}

variable "gcp_billing_account" {
  type = string
}

variable "gcp_currency_code" {
  type = string
}

variable "gcp_currency_units" {
  type = string
}

variable "gcp_threshold_percent" {
  type = string
}

variable "gcp_billing_budget_name" {
  type = string
}

variable "gcp_email_notification_address" {
  type = string
}

# variables.tf
variable "project" {
  type = string
}

variable "billing_project" {
  type = string
}

variable "billing_account" {
  type = string
}

variable "currency_code" {
  type = string
}

variable "currency_units" {
  type = string
}

variable "threshold_percent" {
  type = number
}

variable "billing_budget_name" {
  type = string
}

variable "email_notification_address" {
  type = string
}

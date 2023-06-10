# variables.tf
variable "management_group_id" {
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

variable "contact_emails" {
  type = list(any)
}

variable "start_date" {
  type = string
}

variable "end_date" {
  type = string
}

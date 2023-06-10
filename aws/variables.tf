# variables.tf
variable "aws_account_id" {
  type = string
}

variable "currency_code" {
  type = string
}

variable "currency_units" {
  type = number
}

variable "create_sns_topic" {
  type = bool
}

# main.tf
module "billing_alert" {
  source                    = "binbashar/cost-billing-alarm/aws"
  aws_env                   = "budget"
  aws_account_id            = var.aws_account_id
  currency                  = var.currency_code
  monthly_billing_threshold = var.currency_units
  create_sns_topic          = var.create_sns_topic
}

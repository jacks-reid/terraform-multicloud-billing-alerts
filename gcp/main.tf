# main.tf
locals {
  email_notification_channel_format = "%s-email-notification-channel-address"
  email_notification_channel_name   = format(local.email_notification_channel_format, var.billing_budget_name)
}

data "google_billing_account" "account" {
  billing_account = var.billing_account
}

resource "google_billing_budget" "budget" {
  billing_account = data.google_billing_account.account.id
  display_name    = var.billing_budget_name
  amount {
    specified_amount {
      currency_code = var.currency_code
      units         = var.currency_units
    }
  }
  threshold_rules {
    threshold_percent = var.threshold_percent
  }
}

resource "google_monitoring_notification_channel" "notification_channel" {
  display_name = local.email_notification_channel_name
  type         = "email"

  labels = {
    email_address = var.email_notification_address
  }
}

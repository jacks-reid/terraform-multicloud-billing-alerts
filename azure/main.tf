# main.tf
data "azurerm_management_group" "management_group_selected" {
  name = var.management_group_id
}

resource "azurerm_consumption_budget_management_group" "azurerm_management_group_budget" {
  name                = var.billing_budget_name
  management_group_id = data.azurerm_management_group.management_group_selected.id

  amount     = var.currency_units
  time_grain = "Monthly"

  time_period {
    start_date = var.start_date
    end_date   = var.end_date
  }

  notification {
    enabled   = true
    threshold = var.threshold_percent
    operator  = "GreaterThanOrEqualTo"

    contact_emails = var.contact_emails
  }
}

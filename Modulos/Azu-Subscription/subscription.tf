data "azurerm_management_group" "mgro" {
  name = var.management_group #"mg-leap-ambiente-temporario"
}

data "azurerm_billing_enrollment_account_scope" "bi_scope" {
  billing_account_name    = var.billing_account_name
  enrollment_account_name = var.enrollment_account_name
}

#subscription
resource "azurerm_subscription" "subscription" {
  subscription_name = var.subscription_name
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.bi_scope.id
  alias             = var.subscription_name
  tags = var.tags
}
#associação ao management group
resource "azurerm_management_group_subscription_association" "mgroup" {
  management_group_id = data.azurerm_management_group.mgro.id
  subscription_id     = "/subscriptions/${azurerm_subscription.subscription.subscription_id}"
}

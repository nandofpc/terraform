output "subscription" {
  value = {
    id = azurerm_subscription.subscription.subscription_id
    name = azurerm_subscription.subscription.subscription_name
    subscription_group_name = data.azurerm_management_group.mgro.name
  }
}
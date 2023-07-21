output "postgre_out" {
  value = {
    id   = azurerm_postgresql_server.postgre.id
    fqdn = azurerm_postgresql_server.postgre.fqdn
    #principal_id = azurerm_postgresql_server.postgre.principal_id
    #principal_id = azurerm_postgresql_server.postgre.identity[0].principal_id
    #tenant_id = azurerm_postgresql_server.postgre.tenant_id
    #tenant_id = azurerm_postgresql_server.postgre.identity[0].tenant_id
  }
}
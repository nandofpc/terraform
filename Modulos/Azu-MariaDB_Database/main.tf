resource "azurerm_mariadb_database" "dbname" {
  name                = var.db_name
  resource_group_name = var.rg_name
  server_name         = var.servername
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}





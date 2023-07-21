output "mariadb_database_out" { 
  value ={
       dbname = azurerm_mariadb_database.dbname.name
       id = azurerm_mariadb_database.dbname.id
  }
}

      
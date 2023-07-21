output "mariadbserver_out" {
  value ={ 
      #connection = nonsensitive(module.mariadbserver.mariadbserver_out.administrator_login_password)
      administrator_password = module.mariadbserver.mariadbserver.connection
      administrator_login = module.mariadbserver.mariadbserver.administrator_login
      #id = module.mariadbserver.mariadbserver_out.id
      name = module.mariadbserver.mariadbserver.name
      fqdn = module.mariadbserver.mariadbserver.fqdn      
  }
}

output "mariadbdatabase_out" {
  value ={ 
       dbname = module.mariadbdatabase.mariadb_database_out.dbname
       #id = module.mariadbserver.mariadb_database_out.id    
  }
}


      


// Valores vars para Tags FinOps
empresa       = "bra"
centro_custo  = "0001"
departamento  = "ti"
app           = "apppgtest"
componente    = "pgsql_brso"
ambiente      = "prd"
bo            = "bo"
to            = "to"
gerenciamento = "vra"


bkp-retencao    = "teste"
bkp-segmento    = "teste"
bkp-criticidade = "teste"
bkp-ambiente    = "teste"


// Valores vars para Postgres
postname = "test"
location = "sp"
rg_name  = "rgmysqldbiac"
//admin                     = "pgadmin"
//password                  = "newdb123"
sku                       = "GP_Gen5_4"
pg_version                = "11"
storagesize               = "640000"
retention                 = "7"
auto_grow                 = true
geo_redundant_backup      = true
minimal_tls               = "TLS1_2"
ssl_enforcement           = true
public_network            = false
infrastructure_encryption = true

// Valores vars para Key-vault Postgre

name_key_vault       = "s2022keyvault"
rg_name_key_vault    = "rg-ho-testevra"
name_secret_user     = "User-my-SQL"
name_secret_password = "Password-my-SQL"

// Valores vars para Postgre Database
name_postdb      = "exampledb"
charset_postdb   = "UTF8"
collation_postdb = "English_United States.1252"

// Valores vars Postgre Rules
ignore_endpoint_postrule = false

// Valores vars para datas
gerenciamento_vnet_name    = "GERENCIAMENTO-VNET"
gerenciamento_vnet_rg_name = "GERENCIAMENTO-VNET-RG"
jump_subnet_name           = "jumper-subnet"

vnet_name    = "vnet"
rg_name_vnet = "rg-ho-testevra"
subnet_name  = "subnet"

dns_zone_name    = "mysql-pipe-dbiac.private.mysql.database.azure.com"
rg_name_dns_zone = "rgazudvtestvra"

//Valores Vars Endpoint postgre_pe
private_endpoint_name = "pekeyvault001"
rg_name_pe            = "rg-ho-testevra"
psc_name              = "plkeyvault001"
is_manual_connection  = false


// ===========================
// ===  Configs terraform  ===
// ===========================

terraform {

  required_version = ">=0.14.9"

  required_providers {
    azurerm = {
      source                = "hashicorp/azurerm"
      version               = "3.46.0"
      configuration_aliases = [azurerm, azurerm.ditiidentity, azurerm.ditigerenciamento]
    }
  }
}


// ========================================
// ===  Configs do resource do postgre  ===
// ========================================

resource "azurerm_postgresql_server" "postgre" {
  name                = var.postname
  location            = var.location
  resource_group_name = var.rg_name

  administrator_login          = data.azurerm_key_vault_secret.secret_user.value
  administrator_login_password = data.azurerm_key_vault_secret.secret_password.value

  sku_name              = var.sku
  version               = var.pg_version
  storage_mb            = var.storagesize
  backup_retention_days = var.retention
  auto_grow_enabled     = var.auto_grow

  geo_redundant_backup_enabled      = var.geo_redundant_backup
  ssl_minimal_tls_version_enforced  = var.minimal_tls
  ssl_enforcement_enabled           = var.ssl_enforcement
  public_network_access_enabled     = var.public_network
  infrastructure_encryption_enabled = var.infrastructure_encryption

  threat_detection_policy {
    enabled = true
  }
  tags     = merge(var.tags, var.tagsbkp)
  provider = azurerm
}

// ============================
// ===  Key-vault Postgres  ===
// ============================

data "azurerm_key_vault" "key_vault" {
  name                = var.name_key_vault
  resource_group_name = var.rg_name_key_vault
}

data "azurerm_key_vault_secret" "secret_user" {
  name         = var.name_secret_user
  key_vault_id = data.azurerm_key_vault.key_vault.id
}

data "azurerm_key_vault_secret" "secret_password" {
  name         = var.name_secret_password
  key_vault_id = data.azurerm_key_vault.key_vault.id
}


// ============================
// ===  PostgreSQL Database ===
// ============================

resource "azurerm_postgresql_database" "postgre_database" {
  name                = var.name_postdb
  resource_group_name = var.rg_name
  server_name         = azurerm_postgresql_server.postgre.name
  charset             = var.charset_postdb
  collation           = var.collation_postdb

  provider = azurerm
}

// ========================
// ===  Rules Postgres  ===
// ========================

resource "azurerm_postgresql_virtual_network_rule" "postgre_rules_pe" {
  name                                 = "${var.postname}-prulepe"
  resource_group_name                  = var.rg_name
  server_name                          = azurerm_postgresql_server.postgre.name
  subnet_id                            = azurerm_private_endpoint.postgre_pe.subnet_id
  ignore_missing_vnet_service_endpoint = var.ignore_endpoint_postrule
  provider                             = azurerm
}

resource "azurerm_postgresql_virtual_network_rule" "postgre_rules_jump" {
  name                                 = "${var.postname}-prulejump"
  resource_group_name                  = var.rg_name
  server_name                          = azurerm_postgresql_server.postgre.name
  subnet_id                            = data.azurerm_subnet.jump_subnet.id
  ignore_missing_vnet_service_endpoint = var.ignore_endpoint_postrule
  provider                             = azurerm
}

// ===============================
// ===  Configurando Endpoint  ===
// ===============================

data "azurerm_virtual_network" "gerenciamento_vnet" {
  name                = var.gerenciamento_vnet_name
  resource_group_name = var.gerenciamento_vnet_rg_name
  provider            = azurerm.ditigerenciamento
}

data "azurerm_subnet" "jump_subnet" {
  name                 = var.jump_subnet_name
  virtual_network_name = data.azurerm_virtual_network.gerenciamento_vnet.name
  resource_group_name  = var.gerenciamento_vnet_rg_name
  provider             = azurerm.ditigerenciamento
}

// =======================================================================================

data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.rg_name_vnet
  provider            = azurerm
}

data "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  resource_group_name  = var.rg_name_vnet
  provider             = azurerm
}

// =======================================================================================

data "azurerm_private_dns_zone" "dns_zone" {
  name                = var.dns_zone_name
  resource_group_name = var.rg_name_dns_zone
  provider            = azurerm
}

// =======================================================================================

resource "azurerm_private_endpoint" "postgre_pe" {
  name                = var.private_endpoint_name
  location            = var.location
  resource_group_name = var.rg_name_pe
  subnet_id           = data.azurerm_subnet.subnet.id

  provider   = azurerm
  depends_on = [azurerm_postgresql_server.postgre]
  tags       = var.tags

  private_service_connection {
    name                           = var.psc_name
    private_connection_resource_id = azurerm_postgresql_server.postgre.id
    is_manual_connection           = var.is_manual_connection
    subresource_names              = ["postgresqlServer"]
  }

  private_dns_zone_group {
    name                 = data.azurerm_private_dns_zone.dns_zone.name
    private_dns_zone_ids = [data.azurerm_private_dns_zone.dns_zone.id]
  }
}


// ===========================================
// ===  Configurando as Policys Faltantes  ===
// ===========================================

resource "azurerm_postgresql_configuration" "postgre_config1" {
  name                = "log_connections"
  resource_group_name = var.rg_name
  server_name         = azurerm_postgresql_server.postgre.name
  value               = "on"
}

resource "azurerm_postgresql_configuration" "postgre_config2" {
  name                = "log_checkpoints"
  resource_group_name = var.rg_name
  server_name         = azurerm_postgresql_server.postgre.name
  value               = "on"
}

resource "azurerm_postgresql_configuration" "postgre_config3" {
  name                = "log_disconnections"
  resource_group_name = var.rg_name
  server_name         = azurerm_postgresql_server.postgre.name
  value               = "on"
}

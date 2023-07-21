rg_name      = "rgdvtestecris"
rg_name_vnet = "rgdvtestecris"
rg_name_nsg  = "rgdvtestecris"

vnet_name = "vnetdvinternbrazilsouth"

ambiente = "dv"
rt_name  = "routedvtranscrtpr01"
nsg_name = "nsgdrcris"


enable_service_endpoints  = false
enable_service_delegation = false


service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Storage.Global", "Microsoft.Web"]

delegation_name = "delegation"


pe-net_policy = false
pl-net_policy = false

subnets = [{
  name                    = "subnet_1"
  address_prefixes        = ["172.10.1.0/24"]
  service-delegation_name = "Microsoft.ContainerInstance/containerGroups"
  
  }, {

  name                    = "subnet_2"
  address_prefixes        = ["172.10.2.0/24"]
  service-delegation_name = "Microsoft.ContainerInstance/containerGroups"
  
  }
]

 
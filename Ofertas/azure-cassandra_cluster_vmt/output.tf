#output "Passwords" {
#  value = tomap({
#    for k, x in module.Azu-Cassandra_Cluster_VM.Passwords : k => " Senha da VM ==> ${nonsensitive(x)}"
#  })
#  description = "Retorna os password das maquinas"
#}


output "Private_IPS" {
  value = tomap({
    for p, v in module.Azu-Cassandra_Cluster_VM.Private_IPS : p => " Endereço IP da VM ==> ${v}"
  })
  description = "Retorna os IPS internos das maquinas"
}

output "Resource_Group" {
  value       = "Resource Group das VM's ==> ${module.Azu-Cassandra_Cluster_VM.Resource_Group}"
  description = "Retorna Resource Group das Maquinas Virtuais."
}

output "Virtual_Machine_Names" {
  value = tomap({
    for n, b in module.Azu-Cassandra_Cluster_VM.Virtual_Machine_Names : n => "Nome da VM ==> ${b}"
  })
  description = "Retorna nome das VM's"
}

output "Net_Prefix" {
  value       = " Prefixo IP da VM ==> ${module.Azu-Cassandra_Cluster_VM.Net_Prefix}"
  description = "Retorna Prefixo de rede da subnet onde estão as VM's"
}

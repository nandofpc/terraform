output "nsg_out" {
  value = {
    name = module.nsg.nsg_out.name
    id   = module.nsg.nsg_out.id
  }
}

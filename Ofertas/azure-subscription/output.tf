output "rg" {
  value = {
    name     = module.rg.rg.name
    location = module.rg.rg.location
  }
}
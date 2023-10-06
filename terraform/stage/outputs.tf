output "external_ip_address_app" {
  value = yandex_compute_instance.app.network_interface.0.nat_ip_address
}
output "external_ip_address_db" {
  value = yandex_compute_instance.db.network_interface.0.nat_ip_address
}

### The Ansible inventory file
resource "local_file" "AnsibleInventory" {
  content = templatefile("inventory.tmpl", {
    external_ip_address_app = module.app.external_ip_address_app.0
    external_ip_address_db  = module.db.external_ip_address_db.0
    internal_ip_address_db  = module.db.internal_ip_address_db.0
  })
  filename = "../../ansible/inventory_${var.environment}.yml"
}

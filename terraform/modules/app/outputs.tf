output "external_ip_address_app" {
  value = yandex_compute_instance.app.network_interface.0.nat_ip_address
}


### Ansible inventory file
#resource "local_file" "AnsibleInventory" {
 # content = templatefile("../files/inventory.tmpl",
  # {
  #   ip_address_app = module.app.external_ip_address_app
  #   db_host = module.db.internal_ip_address_db
  #   ip_address_db = module.db.external_ip_address_db
 #  }
 #)
 # filename = "../../ansible/environments/prod/inventory.yml"
#}
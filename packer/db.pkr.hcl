source "yandex" "reddit-db-base" {
  service_account_key_file = "${var.service_account_key_file}"
  folder_id = "${var.folder_id}"
  use_ipv4_nat = true
  preemptible = true
  source_image_family = "${var.source_image_family}"
  image_name = "reddit-db-base-${formatdate("MM-DD-YYYY", timestamp())}"
  image_family = "reddit-db-base"
  ssh_username = "ubuntu"
  platform_id = "standard-v1"
  subnet_id = "${var.subnet_id}"
}

build {
 sources = ["source.yandex.reddit-db-base"]

  provisioner "shell" {
    name            = "mongodb"
    script          = "./scripts/install_mongodb.sh"
    execute_command = "sudo {{.Path}}"
  }
}
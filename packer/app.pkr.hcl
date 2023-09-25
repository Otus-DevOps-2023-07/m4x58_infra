source "yandex" "reddit-app" {
  service_account_key_file = "${var.service_account_key_file}"
  folder_id = "${var.folder_id}"
  use_ipv4_nat = true
  preemptible = true
  source_image_family = "${var.source_image_family}"
  image_name = "reddit-app-${formatdate("MM-DD-YYYY", timestamp())}"
  image_family = "reddit-app"
  ssh_username = "ubuntu"
  platform_id = "standard-v1"
  subnet_id = "e9b3oen1m672rlej00jr"
}

build {
 sources = ["source.yandex.reddit-app"]

  provisioner "shell" {
    name            = "ruby"
    script          = "./scripts/install_ruby.sh"
    execute_command = "sudo {{.Path}}"
  }
}
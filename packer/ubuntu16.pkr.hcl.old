source "yandex" "ubuntu16" {
  service_account_key_file = "/home/ubuntu/git/key.json"
  folder_id = "b1g5q2lccug3i0j92ksh"
  use_ipv4_nat = true
  preemptible = true
  source_image_family = "ubuntu-1604-lts"
  image_name = "reddit-base-${formatdate("MM-DD-YYYY", timestamp())}"
  image_family = "reddit-base"
  ssh_username = "ubuntu"
  platform_id = "standard-v1"
}

build {
 sources = ["source.yandex.ubuntu16"]

  provisioner "shell" {
    name            = "ruby"
    script          = "./scripts/install_ruby.sh"
    execute_command = "sudo {{.Path}}"
  }

  provisioner "shell" {
    name            = "mongodb"
    script          = "./scripts/install_mongodb.sh"
    execute_command = "sudo {{.Path}}"
  }
}

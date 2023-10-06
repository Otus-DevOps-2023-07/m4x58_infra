variable "cloud_id" {
  description = "Cloud"
  default = "b1gfnnr7dn30ornsm35s"
}
variable "folder_id" {
  description = "Folder"
  default = "b1g5q2lccug3i0j92ksh"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "public_key_path" {
  # Описание переменной
  description = "~/.ssh/yc-user.pub"
}

variable "private_key_path" {
  # Описание переменной private key
  default = "~/.ssh/yc-user"
}
variable "image_id" {
  description = "Disk image"
  default = "fd8tthd2hjdt9r1s3cl0"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "service_account_key_file" {
  default = "/home/ubuntu/git/key.json"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default = "fd8d1ggh94virls43kk7"
}
variable db_disk_image {
description = "Disk image for reddit db"
default = "fd8u2iv2s9huq8ncso3r"
}
variable "db_ip" {
  description = "database ip"
  default     = "127.0.0.1"
}
variable "provision" {
 description = "Enable provisioning or not"
  type        = bool
  default     = false
}

variable "environment" {
  description = "prod or stage"
  default = "prod"
}
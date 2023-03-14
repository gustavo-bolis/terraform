variable "hostname" {
  default = "vm-tf"
}

variable "description" {
  default = "Terraform default desc"
}

variable "start_vm" {
  default = "false"
}

variable "target_pve" {
  default = "pve"
}

variable "resources_core" {
  default = "1"
}

variable "resources_sockets" {
  default = "1"
}

variable "resources_mem" {
  default = "2048"
}

variable "resources_cpu_type" {
  default = "host"
}

variable "resources_disk" {
  default = "local-lvm"
}

variable "resources_disk_size" {
  default = "30G"
}

variable "resources_disk_type" {
  default = "scsi"
}

variable "resources_bridge" {
  default = "vmbr0"
}

variable "resources_bridge_model" {
  default = "virtio"
}

variable "full_clone" {
  default = "false"
}

variable "resources_bridge_scsihw" {
  default = "virtio-scsi-single"
}

variable "clone" {
  default = "deb11-testing"
}

variable "name" {
  default     = "test-terraform_cluster"
  description = "name of the container"
}

variable "hostname" {
  default     = "vm-tf"
  description = "hostname of lxc"
}

variable "ostemplate" {
  default     = "local:template/debian-11-turnkey-core_17.1-1_amd64.tar.gz"
  description = "dir to lxc template"
}

variable "description" {
  default     = "Terraform default desc"
  description = "description on proxmox"
}

variable "start_vm" {
  default     = "false"
  description = "should start container after creation?"
}

variable "target_pve" {
  default     = "pve"
  description = "pve target node"
}

variable "resources_core" {
  default     = "1"
  description = "cpu cores"
}

variable "resources_sockets" {
  default     = "1"
  description = "cpu sockets"
}

variable "resources_mem" {
  default     = "2048"
  description = "ram memory"
}

variable "resources_arch" {
  default     = "kvm64"
  description = "cpu type"
}

variable "resources_disk" {
  default     = "local-lvm"
  description = "disk name to create vm on"
}

variable "resources_disk_size" {
  default     = "30G"
  description = "disk space"
}

variable "resources_disk_type" {
  default     = "scsi"
  description = "disk type"
}

variable "resources_bridge" {
  default     = "vmbr0"
  description = "pve bridge name"
}

variable "resources_ipv4_address" {
  default     = "dhcp"
  description = "CIDR IPv4"
}

variable "resources_gw" {
  default = "192.168.250.1"
}

variable "resources_bridge_model" {
  default     = "virtio"
  description = "bridge model"
}

variable "start_at_boot" {
  default     = "false"
  description = "should start at pve boot?"
}

variable "passwd_root" {
  default     = "cool-password"
  sensitive   = true
  description = "this uses the same pass to all lxc"
}
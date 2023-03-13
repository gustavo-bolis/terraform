resource "random_id" "name1" {
  byte_length = 2
}

#resource "random_id" "name2" {
#  byte_length = 2
#}

#resource "random_id" "name3" {
#  byte_length = 2
#}

#locals {
#  IP1 = 200
#  IP2 = 201
#  IP3 = 202
#}

resource "proxmox_lxc" "LXC-1" {
  target_node  = var.target_pve
  hostname     = "${var.hostname}-${random_id.name1.hex}-Control"
  ostemplate   = var.ostemplate
  unprivileged = true
  swap         = 0
  cores        = var.resources_core
  memory       = var.resources_mem
  description  = var.description
  start        = var.start_vm
  password     = var.passwd_root

  #  features {
  #    keyctl  = true
  #    nesting = true
  #  }

  rootfs {
    storage = var.resources_disk
    size    = var.resources_disk_size
  }

  network {
    name   = "eth0"
    bridge = var.resources_bridge
    #    ip     = "${cidrhost(var.resources_ipv4_address,206)}/24"
    ip  = cidrsubnet(var.resources_ipv4_address, 8, local.IP1)
    gw  = var.resources_gw
    ip6 = "auto"
  }
}

#resource "proxmox_lxc" "LXC-2" {
#  target_node  = var.target_pve
#  hostname     = "${var.hostname}-${random_id.name2.hex}-Worker"
#  ostemplate   = var.ostemplate
#  unprivileged = true
#  swap         = 0
#  cores        = var.resources_core
#  memory       = var.resources_mem
#  description  = var.description
#  start        = var.start_vm
#  password     = var.passwd_root
#
#  features {
#    #    keyctl  = true
#    nesting = true
#  }
#
#  rootfs {
#    storage = var.resources_disk
#    size    = var.resources_disk_size
#  }
#
#  network {
#    name   = "eth0"
#    bridge = var.resources_bridge
#    #    ip     = "${cidrhost(var.resources_ipv4_address,206)}/24"
#    ip  = cidrsubnet(var.resources_ipv4_address, 8, local.IP2)
#    gw  = var.resources_gw
#    ip6 = "auto"
#  }
#}

#resource "proxmox_lxc" "LXC-3" {
#  target_node  = var.target_pve
#  hostname     = "${var.hostname}-${random_id.name3.hex}-Worker"
#  ostemplate   = var.ostemplate
#  unprivileged = true
#  swap         = 0
#  cores        = var.resources_core
#  memory       = var.resources_mem
#  description  = var.description
#  start        = var.start_vm
#  password     = var.passwd_root
#
#  features {
#    #    keyctl  = true
#    nesting = true
#  }
#
#  rootfs {
#    storage = var.resources_disk
#    size    = var.resources_disk_size
#  }
#
#  network {
#    name   = "eth0"
#    bridge = var.resources_bridge
#    #    ip     = "${cidrhost(var.resources_ipv4_address,206)}/24"
#    ip  = cidrsubnet(var.resources_ipv4_address, 8, local.IP3)
#    gw  = var.resources_gw
#    ip6 = "auto"
#  }
#}

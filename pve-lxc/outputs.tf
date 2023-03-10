output "ipv4_address-1" {
  value = proxmox_lxc.LXC-1.network.0.ip
}

output "ipv4_addres-2" {
  value = proxmox_lxc.LXC-2.network.0.ip
}

output "ipv4_address-3" {
  value = proxmox_lxc.LXC-3.network.0.ip
}

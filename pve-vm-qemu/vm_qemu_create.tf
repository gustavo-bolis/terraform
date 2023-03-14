resource "random_id" "name1" {
  byte_length = 2
}

resource "proxmox_vm_qemu" "VM-1" {
  target_node = var.target_pve
  name        = "${var.hostname}-${random_id.name1.hex}"
  clone       = var.clone
  cores       = var.resources_core
  sockets     = var.resources_sockets
  cpu         = var.resources_cpu_type
  memory      = var.resources_mem
  full_clone  = var.full_clone
  scsihw      = var.resources_bridge_scsihw
  desc        = var.description
  oncreate    = var.start_vm
  agent       = 1

  disk {
    size     = var.resources_disk_size
    type     = var.resources_disk_type
    iothread = 1
    storage  = var.resources_disk
  }

  network {
    bridge = var.resources_bridge
    model  = var.resources_bridge_model
  }
}

# Terraform

This repository contains Terraform examples to create VMs or LXC containers in Proxmox using the Gaia UI.

## Development Stack

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)

### PVE-LXC

Create a single or multiple LXC containers on Proxmox.

Inside the `pve-lxc` folder, run:

`terraform init`

Run `terraform plan` to see what Terraform is going to do.

If everything seems fine, run `terraform apply` and confirm with `yes`.


### PVE-VM-QEMU

Clone a template on Proxmox.

Inside the `pve-vm-qemu` folder, run:

`terraform init`

Run `terraform plan` to see what Terraform is going to do.

If everything seems fine, run `terraform apply` and confirm with `yes`.


## To use in Gaia UI

Follow the quick start guide to install Gaia: https://docs.gaia-app.io/getting-started/quick-start/

Import a new module, add the needed variables (you can see what variables to use in `variables.tf`), then create a stack and run it.
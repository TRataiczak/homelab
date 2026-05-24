resource "proxmox_virtual_environment_vm" "rat_mon_01" {
  name      = "RAT-MON-01"
  node_name = "RAT-PROX-01"
  vm_id     = 200

  clone {
    vm_id = 9000
    full  = true
  }

  agent {
    enabled = true
  }

  cpu {
    cores = 2
    type  = "host"
  }

  memory {
    dedicated = 4096
  }

  disk {
    datastore_id = "local-lvm"
    interface    = "scsi0"
    size         = 32
  }

  network_device {
    bridge  = "vmbr0"
    vlan_id = 20
  }

  initialization {
    ip_config {
      ipv4 {
        address = "10.0.20.5/24"
        gateway = "10.0.20.1"
      }
    }

    dns {
      servers = ["10.0.0.1"]
    }
  }

  operating_system {
    type = "l26"
  }
}

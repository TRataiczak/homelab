# homelab

Personal homelab infrastructure — fully documented and reproducible.

## Overview

This repository contains the complete infrastructure-as-code, configuration, and documentation for my homelab. Everything is designed to be rebuilt from scratch using only this repository.

## Hardware

| Hostname | Role | Hardware |
|----------|------|----------|
| RAT-PROD-01 | External services, reverse proxy | Bare metal Fedora Server |
| RAT-MON-01 | Ansible control node, monitoring | Bare metal Fedora Server |
| RAT-PROX-01 | Hypervisor, test VMs | Proxmox VE — 16 threads, 128GB RAM |
| RAT-NAS-01 | Storage, backups | Synology 5-bay NAS |
| RAT-NET-01 | Router, firewall, DNS | Ubiquiti UDM Pro |
| RAT-SW-01 | Core switching | Unifi 48-port PoE |
| RAT-WAP-01 | Wireless | Unifi U7 Pro |

# homelab

Personal homelab infrastructure — fully documented and reproducible.

## Overview

This repository contains the complete infrastructure-as-code, configuration, and documentation for my homelab. Everything is designed to be rebuilt from scratch using only this repository.

## Hardware

| Hostname | Role | Hardware |
|----------|------|----------|
| RAT-PROD-01 | External services, reverse proxy | HP EliteDesk — Intel i7-12700T, 16GB RAM |
| RAT-ANSIBLE-01 | Ansible control node | Bare metal Fedora Server |
| RAT-PROX-01 | Hypervisor, test VMs | Proxmox VE — 16 threads, 128GB RAM |
| RAT-WORK-01 | Personal workstation | Fedora Workstation |
| RAT-NET-01 | Router, firewall, DNS | Ubiquiti UDM Pro |
| RAT-SW-01 | Core switching | Unifi 48-port PoE |
| RAT-WAP-01 | Wireless | Unifi U7 Pro |

## Services

All services run on RAT-PROD-01 behind Traefik reverse proxy with Cloudflare SSL.

| Service | Subdomain | Purpose |
|---------|-----------|---------|
| Traefik | traefik.rataiczak.com | Reverse proxy |
| Portainer | portainer.rataiczak.com | Docker management |
| Home Assistant | smarthome.rataiczak.com | Home automation, Zigbee |
| ActualBudget | budget.rataiczak.com | Personal finance |
| LittleLink | links.rataiczak.com | Link page |
| Glance | glance.rataiczak.com | Dashboard |
| Mealie | mealie.rataiczak.com | Recipe manager |

#!/bin/bash
set -xeuo pipefail

rpm -qa | sort

#curl --create-dirs -o /etc/yum.repos.d/tailscale.repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo
#dnf install -y tailscale && rm -rf /etc/yum.repos.d/tailscale.repo

#sed -i 's/SELINUX=enforcing/SELINUX=permissive/' /etc/selinux/config
#dnf install -y linux-firmware kernel-modules-extra

# GNOME desktop
#dnf install -y gdm gnome-shell nautilus ptyxis gnome-disk-utility adw-gtk3-theme

# graphical target
#systemctl set-default graphical.target

# desktop plumbing/apps
#dnf install -y flatpak

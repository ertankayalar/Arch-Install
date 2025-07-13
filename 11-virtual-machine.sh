sudo pacman -S --needed virt-manager qemu libvirt dnsmasq iptables-nft bridge-utils

#
sudo systemctl enable --now libvirtd

#
sudo systemctl status libvirtd

# To manage VMs without sudo, add your user to the libvirt group:

sudo usermod -aG libvirt $(whoami)

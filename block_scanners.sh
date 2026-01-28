#!/bin/bash

# Ensure the script is run as root
if [ "$EUID" -ne 0 ]; then 
  echo "Please run as root (use sudo)"
  exit
fi

echo "Starting firewall configuration..."

# --- 1. Censys ---
iptables -I INPUT -s 162.142.125.0/24 -j DROP
iptables -I INPUT -s 167.94.138.0/24 -j DROP
iptables -I INPUT -s 167.94.145.0/24 -j DROP
iptables -I INPUT -s 167.94.146.0/24 -j DROP
iptables -I INPUT -s 167.248.133.0/24 -j DROP
iptables -I INPUT -s 199.45.154.0/24 -j DROP
iptables -I INPUT -s 199.45.155.0/24 -j DROP
iptables -I INPUT -s 206.168.34.0/24 -j DROP
# IPv6 Censys
ip6tables -I INPUT -s 2602:80d:1000:b0cc:e::/80 -j DROP
ip6tables -I INPUT -s 2620:96:e000:b0cc:e::/80 -j DROP
ip6tables -I INPUT -s 2602:80d:1003::/112 -j DROP
ip6tables -I INPUT -s 2602:80d:1004::/112 -j DROP

# --- 2. Shodan ---
SHODAN_IPS=(
    208.180.20.97 198.20.69.74 198.20.69.98 198.20.70.114 
    198.20.99.130 93.120.27.62 66.240.236.119 71.6.135.131 
    66.240.192.138 71.6.167.142 82.221.105.6 82.221.105.7 
    71.6.165.200 188.138.9.50 85.25.103.50 85.25.43.94 
    71.6.146.185 71.6.158.166 198.20.87.98 66.240.219.146 
    209.126.110.38 104.236.198.48 104.131.0.69 162.159.244.38
)
for ip in "${SHODAN_IPS[@]}"; do
    iptables -I INPUT -s "$ip" -j DROP
done

# --- 3. Shadowserver ---
iptables -I INPUT -s 216.218.206.0/24 -j DROP
iptables -I INPUT -s 74.82.47.0/24 -j DROP

# --- 4. PAN Expanse ---
iptables -I INPUT -s 144.86.0.0/15 -j DROP
iptables -I INPUT -s 44.192.0.0/10 -j DROP

# --- 5. DigitalOcean ---
iptables -I INPUT -s 142.93.0.0/16 -j DROP
iptables -I INPUT -s 104.248.0.0/16 -j DROP
iptables -I INPUT -s 167.99.0.0/16 -j DROP
iptables -I INPUT -s 128.199.0.0/16 -j DROP
iptables -I INPUT -s 178.128.0.0/16 -j DROP

echo "All rules applied successfully."

# --- Persistence ---
# Check if iptables-persistent is installed; if not, install it.
if ! dpkg -l | grep -q iptables-persistent; then
    echo "Installing iptables-persistent to keep rules after reboot..."
    export DEBIAN_FRONTEND=noninteractive
    apt-get update && apt-get install -y iptables-persistent
fi

# Save the rules
netfilter-persistent save

echo "Rules saved and will persist after reboot."

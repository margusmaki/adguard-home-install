# Enabling Ports AdGuard Home DNS
sudo ufw allow 22/tcp comment 'SSH'
sudo ufw allow 53/tcp comment 'AdGuard Home: DNS'
sudo ufw allow 53/udp comment 'AdGuard Home: DNS'
sudo ufw allow 80/tcp comment 'AdGuard Home: Web UI'
sudo ufw allow 443/tcp comment 'AdGuard Home: DoH'
sudo ufw allow 853/tcp comment 'AdGuard Home: DoT'
sudo ufw allow 853/udp comment 'AdGuard Home: DoQ'
#sudo ufw allow 3000/tcp comment 'AdGuard Home: setup wizard'

# Enable firewall
sudo ufw enable
# Reload firewall
sudo ufw reload
# Status firewall
sudo ufw status

# sudo ufw disable
# sudo ufw status numbered
# sudo ufw delete 18
# sudo ufw delete allow 80/udp
# sudo ufw --force reset

# bind: address already in use error FIX
sudo mkdir -p /etc/systemd/resolved.conf.d
sudo touch /etc/systemd/resolved.conf.d/adguardhome.conf
sudo echo "[Resolve]" >> /etc/systemd/resolved.conf.d/adguardhome.conf
sudo echo "DNS=127.0.0.1" >> /etc/systemd/resolved.conf.d/adguardhome.conf
sudo echo "DNSStubListener=no" >> /etc/systemd/resolved.conf.d/adguardhome.conf
sudo mv /etc/resolv.conf /etc/resolv.conf.backup
sudo ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf
sudo systemctl reload-or-restart systemd-resolved
# bind: address already in use error FIX

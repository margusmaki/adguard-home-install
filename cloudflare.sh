# Store the API Token Securely
sudo touch /etc/letsencrypt/cloudflare.ini
sudo echo "dns_cloudflare_api_token = TOKEN" >> /etc/letsencrypt/cloudflare.ini
sudo chmod 600 /etc/letsencrypt/cloudflare.ini

# Run Certbot with DNS Challenge
sudo certbot certonly \
  --dns-cloudflare \
  --dns-cloudflare-credentials /etc/letsencrypt/cloudflare.ini \
  --dns-cloudflare-propagation-seconds 30 \
  --preferred-challenges dns-01 \
  --agree-tos \
  --no-eff-email \
  --email margus.potter@gmail.com \
  -d ad.tllhi.ee

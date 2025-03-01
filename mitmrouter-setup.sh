sudo apt update
sudo apt -y full-upgrade
sudo apt install -y nano hostapd bridge-utils iptables net-tools
sudo sysctl -w net.ipv4.ip_forward=1
git clone https://github.com/nmatt0/mitmrouter.git
sed -i 's/WAN_IFACE="eth0"/WAN_IFACE="ens2f0"/g' mitmrouter/mitmrouter.sh
sed -i 's/WAN_IFACE="eth0"/WAN_IFACE="wlp4s0"/g' mitmrouter/mitmrouter.sh
chmod +x ~/mitmrouter/mitmrouter.sh

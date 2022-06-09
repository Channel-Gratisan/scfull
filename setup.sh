#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Link Hosting Kalian Untuk Ssh Vpn
MasWay="raw.githubusercontent.com/Channel-Gratisan/scfull/main/ssh"
# Link Hosting Kalian Untuk Sstp
MasWayn="raw.githubusercontent.com/Channel-Gratisan/scfull/main/sstp"
# Link Hosting Kalian Untuk Ssr
MasWaynn="raw.githubusercontent.com/Channel-Gratisan/scfull/main/ssr"
# Link Hosting Kalian Untuk Shadowsocks
MasWaynnn="raw.githubusercontent.com/Channel-Gratisan/scfull/main/shadowsocks"
# Link Hosting Kalian Untuk Wireguard
MasWaynnnn="raw.githubusercontent.com/Channel-Gratisan/scfull/main/wireguard"
# Link Hosting Kalian Untuk Xray
MasWaynnnnn="raw.githubusercontent.com/Channel-Gratisan/scfull/main/xray"
# Link Hosting Kalian Untuk Ipsec
MasWaynnnnnn="raw.githubusercontent.com/Channel-Gratisan/scfull/main/ipsec"
# Link Hosting Kalian Untuk Backup
MasWaynnnnnnn="raw.githubusercontent.com/Channel-Gratisan/scfull/main/backup"
# Link Hosting Kalian Untuk Websocket
MasWaynnnnnnnn="raw.githubusercontent.com/Channel-Gratisan/scfull/main/websocket"
# Link Hosting Kalian Untuk Ohp
MasWaynnnnnnnnn="raw.githubusercontent.com/Channel-Gratisan/scfull/main/ohp"

# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/Channel-Gratisan/newsc/main/ip.sh | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Admin!!"
echo -e "${NC}${LIGHT}Untuk User Premium!!"
echo -e "${NC}${LIGHT}WhatsApp : 6283120857907"
echo -e "${NC}${LIGHT}Telegram : https://t.me/MasWayVPN"
clear
exit 0
fi
mkdir /var/lib/crot;
echo "IP=" >> /var/lib/crot/ipvps.conf
wget https://${MasWay}/slhost.sh && chmod +x slhost.sh && ./slhost.sh
#install xray
wget https://${MasWaynnnnn}/ins-xray.sh && chmod +x ins-xray.sh && screen -S xray ./ins-xray.sh
#install ssh ovpn
wget https://${MasWay}/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
wget https://${MasWayn}/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
#install ssr
wget https://${MasWaynn}/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget https://${MasWaynnn}/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
#installwg
wget https://${MasWaynnnn}/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
#install L2TP
wget https://${MasWaynnnnnn}/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
wget https://${MasWaynnnnnnn}/set-br.sh && chmod +x set-br.sh && ./set-br.sh
# Websocket
wget https://${MasWaynnnnnnnn}/edu.sh && chmod +x edu.sh && ./edu.sh
# Ohp Server
wget https://${MasWaynnnnnnnnn}/ohp.sh && chmod +x ohp.sh && ./ohp.sh
# Install Slowdns Server
wget https://raw.githubusercontent.com/Channel-Gratisan/scfull/main/Slowdns/install && chmod +x install && bash install
# Informasi IP Saya dan Semua Port TCP UDP
wget https://raw.githubusercontent.com/Channel-Gratisan/scfull/main/ipsaya.sh && chmod +x ipsaya.sh
#
# install xray grpc
wget https://raw.githubusercontent.com/Channel-Gratisan/scfull/main/grpc/sl-grpc.sh && chmod +x sl-grpc.sh && screen -S sl-grpc ./sl-grpc.sh
#

rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-xray.sh
rm -f /root/ipsec.sh
rm -f /root/set-br.sh
rm -f /root/edu.sh
rm -f /root/ohp.sh
rm -f /root/install
rm -f /root/sl-grpc.sh
cat <<EOF> /etc/systemd/system/autosett.service
[Unit]
Description=autosetting
Documentation=nekopoi.care

[Service]
Type=oneshot
ExecStart=/bin/bash /etc/set.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable autosett
wget -O /etc/set.sh "https://${MasWay}/set.sh"
chmod +x /etc/set.sh
history -c
echo "1.2" > /home/ver
echo " "
echo "Installation has been completed!!"echo " "
echo "============================================================================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "----------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22, 2253"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 990"  | tee -a log-install.txt
echo "   - Stunnel5                : 443, 445"  | tee -a log-install.txt
echo "   - Dropbear                : 443, 109, 143"  | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 89"  | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1701"  | tee -a log-install.txt
echo "   - PPTP VPN                : 1732"  | tee -a log-install.txt
echo "   - SSTP VPN                : 444"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3543"  | tee -a log-install.txt
echo "   - XRAYS Vmess TLS         : 8443"  | tee -a log-install.txt
echo "   - XRAYS Vmess None TLS    : 80"  | tee -a log-install.txt
echo "   - XRAYS Vless TLS         : 8443"  | tee -a log-install.txt
echo "   - XRAYS Vless None TLS    : 80"  | tee -a log-install.txt
echo "   - XRAYS Trojan            : 2083"  | tee -a log-install.txt
echo "   - XRAYS VMESS GRPC        : 1180"  | tee -a log-install.txt
echo "   - XRAYS VLESS GRPC        : 2280"  | tee -a log-install.txt
echo "   - CloudFront Websocket    : [OFF]"  | tee -a log-install.txt
echo "   - Websocket TLS           : 443"  | tee -a log-install.txt
echo "   - Websocket None TLS      : 8880"  | tee -a log-install.txt
echo "   - Websocket Ovpn          : 2086"  | tee -a log-install.txt
echo "   - OHP SSH                 : 8181"  | tee -a log-install.txt
echo "   - OHP Dropbear            : 8282"  | tee -a log-install.txt
echo "   - OHP OpenVPN             : 8383"  | tee -a log-install.txt
echo "   - TrojanGo                : 2087"  | tee -a log-install.txt
echo "   - SLOWDNS OpenSSH         : 2253[ON]"  | tee -a log-install.txt
echo "   - SLOWDNS Dropbear        : 1153[ON]"  | tee -a log-install.txt
echo "   - SLOWDNS SSL/TLS         : 3353[ON]"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 GMT +7" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo " Reboot 15 Sec"
sleep 15
rm -f setup.sh
reboot

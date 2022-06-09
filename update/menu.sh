#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                  MENU UTAMA $wh"
echo -e "$y            Script Mod By MasWay $wh"
echo -e "$m-------------------------------------------------$wh"
echo -e "$yy 1$yl.  SSH & OpenVPN MENU  $wh"
echo -e "$yy 2$yl.  L2TP MENU$wh"
echo -e "$yy 3$yl.  PPTP MENU$wh"
echo -e "$yy 4$yl.  SSTP MENU$wh"
echo -e "$yy 5$yl.  WIREGUARD MENU$wh"
echo -e "$yy 6$yl.  SHADOWSOCKS MENU$wh"
echo -e "$yy 7$yl.  SHADOWSOCKSR MENU$wh"
echo -e "$yy 8$yl.  XRAY VMESS MENU$wh"
echo -e "$yy 9$yl.  XRAY VLESS MENU$wh"
echo -e "$yy 10$yl. XRAY TROJAN MENU$wh"
echo -e "$yy 11$yl. TROJAN GO MENU$wh"
echo -e "$yy 12$yl. XRAY GRPC MENU$wh"
echo -e "$yy 13$yl. SLOWDNS MENU (OFF)$wh"
echo -e "$yy 14$yl. CEK SEMUA IP PORT$wh"
echo -e "$yy 15$yl. CEK SEMUA SERVICE VPN$wh"
echo -e "$yy 16$yl. UPDATE MENU (Update 2x)$wh"
echo -e "$yy 17$yl. SL-FIX (Perbaiki Error SSLH+WS-TLS setelah reboot)$wh"
echo -e "$yy 18$yl. Settings (Pengaturan)$wh"
echo -e "$yy 19$yl. Exit (Keluar)$wh"
echo -e "$yy 20$yl. copyrepo $wh"
echo -e "$yy 22$yl. grpcmenu2 (GRPC BARU)$wh"
echo -e "$m-------------------------------------------------$wh"
read -p "Select From Options [ 1 - 22 ] : " menu
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
l2tpmenu
;;
3)
clear
pptpmenu
;;
4)
clear
sstpmenu
;;
5)
clear
wgmenu
;;
6)
clear
ssmenu
;;
7)
clear
ssrmenu
;;
8)
clear
vmessmenu
;;
9)
clear
vlessmenu
;;
10)
clear
trmenu
;;
11)
clear
trgomenu
;;
12)
clear
grpcmenu
;;
13)
clear
slowdnsmenu
;;
14)
clear
ipsaya
;;
15)
clear
running
;;
16)
clear
updatemenu
;;
17)
clear
sl-fix
;;
18)
clear
setmenu
;;
19)
clear
exit
;;
20)
clear
copyrepo
;;
22)
clear
grpcmenu2
;;
*)
clear
menu
;;
esac

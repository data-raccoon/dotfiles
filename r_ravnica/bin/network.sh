ping -c1 stev.lostpackets.de
ping_nok=$?
vpnc_ok=$(ps aux | grep "vpnc" | grep $(cat /var/run/vpnc/pid) | wc -l)

if [ $ping_nok -eq 1 ] || [ $vpnc_ok -eq 0 ]; then
    echo "restarting vpnc"
    sudo vpnc-disconnect
    # wait for vpnc to tidy up
    sleep 5
    # maybe routing table is broken, add gateway to internet
    sudo route add -net 0.0.0.0 gw 10.47.8.254
    sudo route add -net 192.168.0.0/24 gw 10.47.9.1
    # only works as crontab if password is stored
    sudo vpnc-connect stev
fi


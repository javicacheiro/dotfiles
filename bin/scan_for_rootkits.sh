
#
# RKHUNTER
#
rkhunter --update
rkhunter --check

#
# CHKROOTKIT
#
chkrootkit 

#
# UNHIDE
#
unhide proc
unhide sys
unhide brute

echo "IMPORTANTE: Ejecutar el script como root!"

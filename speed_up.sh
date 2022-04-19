# disable power management of wireless chipset
sed -i 's/3/2/' /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf

# turn off fire log
# ufw logging off
# ufw loggin low # on

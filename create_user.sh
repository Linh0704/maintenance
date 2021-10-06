#!/bin/bash
if [ $(id -u) -eq 0 ]; then
        read -p "Enter username : " username
        egrep "^$username" /etc/passwd >/dev/null
        if [ $? -eq 0 ]; then
                echo "$username exists!"
                exit 1
        else
                useradd -m "$username" -s /bin/bash -d /home/$username
                [ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
                mkdir /home/$username/.ssh
                touch /home/$username/.ssh/authorized_keys
                chown -R $username:$username /home/$username/.ssh
                chmod 700 /home/$username/.ssh
                chmod 600 /home/$username/.ssh/authorized_keys

        fi
else
        echo "Only root may add a user to the system."
        exit 2
fi

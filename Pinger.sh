# Script to Ping all host and separate online hosts from offlines one
let "online=0"
let "offline=0"
myIp='192.168.117.'
for i in {1..255}
    do 
        ping $myIp$i -c 2 
        if [ $? -eq 0 ]
        then echo "$myIp$i" >> online_hosts.txt
        let "online++"
        else    
        echo "$myIp$i" >> offline_hosts.txt
        let "offline++"
        fi
    done
echo " You have $online hosts online and $offline hosts offline "
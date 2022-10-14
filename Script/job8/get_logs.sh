#./bin/bash

var1=$(date +%d-%m-%Y-%H-%M)

grep -c 'session opened' /var/log/auth.log > numberconnection$var1
tar -zcvf numberconnection$var1.tar.gz numberconnection$var1
mv numberconnection$var1.tar.gz /home/hugo/Script/job8/Backup

#!/bin/bash

fichier="number_connections_$(date +%d-%m-%Y-%H:%M)"

sudo grep Accepted /var/log/auth.log >> $fichier && tar --force-local -cvz -f "$fichier".tar.gz $fichier

mv "$fichier".tar.gz /home/mehdi/Documents/shell.exe/job8/Backup
rm $fichier


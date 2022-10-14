#./bin/bash

new=Shell_Userlist.csv
old=Shell_Userlist_Backup.cvs

if cmp --silent -- $old $new; then
	echo "Updating usernames!"
	sh bashscript.sh
else
	echo "No update needed!"
fi

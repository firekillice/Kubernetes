### init environment

### init db directory
DB_DIR=/data/cuser00/var/mongo
if [ ! -f $DB_DIR ];then
	mkdir /data/cuser00/var/mongo
	chmod 777  /data/cuser00/var/mongo
fi


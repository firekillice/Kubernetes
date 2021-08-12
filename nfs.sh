yum install nfs-utils -y

if [ ! -d ]
then
 mkdir -p /data/cuser00/nfs
fi

echo "/data/cuser00/nfs *(rw,no_root_squash)" > /etc/exports

systemctl restart nfs && systemctl enable nfs

showmount -e 

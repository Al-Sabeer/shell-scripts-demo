#!/bin/bash



<<info
this shell script will take periodic backups

eg..
./backup.sh <source> <dest>
src /home/ubuntu/scripts
<dest>  /home/ubuntu/backups
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src

aws s3 sync $dest s3://tws-backups-gf

echo "backup completed and uploaded to s3"


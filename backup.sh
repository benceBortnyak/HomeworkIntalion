#!/bin/bash
date=$(date +"%Y-%m-%d %T")
tar -zcvf $HOME/serverbackup/backup_$date.tar.gz /config

#!/bin/bash


for host in `cat datanodes.txt`; do

  echo -e "${txtbld}\n######################################################"
  echo -e "# Checking Host: $host"
  echo "######################################################${txtrst}"

ssh -q root@$host 'bash -s' << 'END'
 echo "#################################"
 echo `hostname -f`
 echo "#################################"
source /opt/anaconda3/bin/activate py35
pip install 

END

done

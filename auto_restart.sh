# ! /bin/sh

SERVICE_PATH="/home/pi/Documents/caiji-intel-noweight-client-new/"

SERVICE_NAME="camtest"

START_CMD="./$SERVICE_NAME "

LOG_FILE="restart.log"


cd $SERVICE_PATH

pwd

while true 

do

    procnum=`ps -ef|grep $SERVICE_NAME|grep -v grep|wc -l`

    if [ $procnum -eq 0 ]

    then

        echo "start service...................."

        echo `date +%Y-%m-%d` `date +%H:%M:%S`  $SERVICE_NAME >>$LOG_FILE

        ${START_CMD}

    fi

    sleep 1 #//每秒检查一轮

done

#https://www.jianshu.com/p/adcddb595786
#nohup ./auto_restart.sh >/dev/null 2>&1 &

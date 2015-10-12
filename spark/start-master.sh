docker run --rm -it \
    -p 49100:49100 -p 49101:49101 \
    --add-host notebook.spark:192.168.59.103 \
    --add-host master1.spark:0.0.0.0 \
    -e "SPARK_MASTER_PORT=49101" \
    -e "SPARK_MASTER_IP=master1.spark" \
    -e "SPARK_MASTER_WEBUI_PORT=49100" \
    mira/spark /opt/spark-1.5.1/sbin/start-master-foreground.sh
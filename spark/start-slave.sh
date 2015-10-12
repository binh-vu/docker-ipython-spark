docker run --rm -it \
    -p 49102:49102 -p 49103:49103 \
    -p 49120:49120 -p 49121:49121 \
    -p 49122:49122 \
    --add-host master1.spark:192.168.59.103 \
    --add-host notebook.spark:192.168.59.103 \
    --add-host worker1.spark:0.0.0.0 \
    -e "SPARK_WORKER_WEBUI_PORT=49102" \
    -e "SPARK_WORKER_HOST=worker1.spark" \
    -e "SPARK_WORKER_PORT=49103" \
    mira/spark /opt/spark-1.5.1/sbin/start-slave-foreground.sh spark://master1.spark:49101
docker run --rm -it \
    -p 8888:8888 -p 49110:49110 -p 49111:49111 \
    -p 49112:49112 -p 49113:49113 -p 49115:49115 \
    -p 49116:49116 -p 49117:49117 \
    --add-host "master1.spark:192.168.59.103" \
    --add-host "notebook.spark:0.0.0.0" \
    -e "SPARK_PUBLIC_DNS=notebook.spark" \
    -e "SPARK_MASTER_URL=spark://master1.spark:49101" \
    -e "SPARK_URI_PORT=49110" \
    -e "SPARK_DRIVER_HOST=notebook.spark" \
    -e "SPARK_DRIVER_PORT=49111" \
    -e "SPARK_EXECUTOR_PORT=49112" \
    -e "SPARK_SERVER_PORT=49113" \
    -e "SPARK_BLOCKMANAGER_PORT=49114" \
    -e "SPARK_BOARDCAST_PORT=49115" \
    -e "SPARK_REPLCLASSSERVER_PORT=49116" \
    -v /Users/rook/workspace:/workspace \
    mira/ispark sh /usr/local/bin/bootstrap.sh
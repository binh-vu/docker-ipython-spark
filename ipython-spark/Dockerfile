FROM mira/spark

RUN ipython profile create pyspark
RUN pip install terminado py4j

ADD nbpasswd.txt /root/.ipython/profile_pyspark/
ADD bootstrap.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/bootstrap.sh
RUN printf 'c.NotebookApp.ip = "*"\nc.NotebookApp.open_browser = False\nPWDFILE="/root/.ipython/profile_pyspark/nbpasswd.txt"\nc.NotebookApp.password = open(PWDFILE).read().strip()' >> ~/.ipython/profile_pyspark/ipython_notebook_config.py
RUN echo export PYSPARK_SUBMIT_ARGS=\"--master \$SPARK_MASTER_URL --executor-memory 2G --conf 'spark.python.worker.memory=1G' --conf 'spark.ui.port=$SPARK_URI_PORT' --conf 'spark.driver.host=$SPARK_DRIVER_HOST' --conf 'spark.driver.port=$SPARK_DRIVER_PORT' --conf 'spark.executor.port=$SPARK_EXECUTOR_PORT' --conf 'spark.fileserver.port=$SPARK_SERVER_PORT' --conf 'spark.blockManager.port=$SPARK_BLOCKMANAGER_PORT --conf 'spark.broadcast.port=$SPARK_BOARDCAST_PORT' --conf spark.replClassServer.port=$SPARK_REPLCLASSSERVER_PORT'\" >> /root/.bashrc

ENV SPARK_HOME /opt/spark-1.5.1
ENV PATH $SPARK_HOME/bin:$PATH

WORKDIR /workspace
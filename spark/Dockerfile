FROM mira/scientific

ADD spark.tar /opt

RUN add-apt-repository ppa:webupd8team/java && apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
RUN apt-get install -y oracle-java8-installer
RUN cd /opt && wget http://d3kbcqa49mib13.cloudfront.net/spark-1.5.1-bin-hadoop2.6.tgz && tar -xf spark-1.5.1-bin-hadoop2.6.tgz && rm spark-1.5.1-bin-hadoop2.6.tgz && mv /opt/spark-1.5.1-bin-hadoop2.6 /opt/spark-1.5.1
RUN mv /opt/start-master-foreground.sh /opt/spark-1.5.1/sbin/ && mv /opt/start-slave-foreground.sh /opt/spark-1.5.1/sbin/

RUN printf 'spark.blockManager.port 49120\nspark.broadcast.port 49121\nspark.replClassServer.port 49122'
ENV SPARK_HOME /opt/spark-1.5.1

EXPOSE 49120 49121 49122
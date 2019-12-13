FROM apache/zeppelin:0.8.2

WORKDIR /

COPY ./files/. /

RUN wget -P /tmp https://apache.uib.no/hadoop/common/hadoop-2.7.7/hadoop-2.7.7.tar.gz
RUN tar zxf /tmp/hadoop-2.7.7.tar.gz -C /usr/lib/
RUN ln -sf /usr/lib/hadoop-2.7.7 /usr/lib/hadoop
RUN rm -f /tmp/hadoop-2.7.7.tar.gz

RUN wget -P /tmp https://apache.uib.no/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz
RUN tar zxf /tmp/spark-2.4.4-bin-hadoop2.7.tgz -C /usr/lib/
RUN ln -sf /usr/lib/spark-2.4.4-bin-hadoop2.7 /usr/lib/spark
RUN rm -f /tmp/spark-2.4.4-bin-hadoop2.7.tgz

RUN ln -sf /etc/hadoop/yarn-site.xml /usr/lib/hadoop/etc/hadoop/yarn-site.xml
RUN ln -sf /etc/hadoop/core-site.xml /usr/lib/hadoop/etc/hadoop/core-site.xml
RUN ln -sf /etc/hadoop/hdfs-site.xml /usr/lib/hadoop/etc/hadoop/hdfs-site.xml
RUN ln -sf /etc/hadoop/mapred-site.xml /usr/lib/hadoop/etc/hadoop/mapred-site.xml

RUN /root/create-python-env.bash

RUN wget https://storage.googleapis.com/hadoop-lib/gcs/gcs-connector-hadoop2-latest.jar
RUN mv gcs-connector-hadoop2-latest.jar lib/gcs-connector-hadoop.jar

WORKDIR /zeppelin

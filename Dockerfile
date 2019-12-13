FROM apache/zeppelin:0.8.2

WORKDIR /zeppelin
COPY create-python-env.bash /root/create-python-env.bash
RUN /root/create-python-env.bash

COPY install.sh /root/install.sh
RUN /root/install.sh

COPY interpreter.json /zeppelin/conf/interpreter.json
COPY zeppelin-site.xml /zeppelin/conf/zeppelin-site.xml

RUN wget https://storage.googleapis.com/hadoop-lib/gcs/gcs-connector-hadoop2-latest.jar
RUN mv gcs-connector-hadoop2-latest.jar lib/gcs-connector-hadoop.jar

COPY dapla-spark-plugin.jar /zeppelin/.


FROM apache/zeppelin:0.8.2

ADD install.sh /root/install.sh
RUN /root/install.sh

ADD interpreter.json /zeppelin/conf/interpreter.json
ADD zeppelin-site.xml /zeppelin/conf/zeppelin-site.xml

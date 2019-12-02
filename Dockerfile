FROM apache/zeppelin:0.8.2

ADD install.sh /root/install.sh
ADD interpreter.json /zeppelin/conf/interpreter.json

RUN /root/install.sh

FROM apache/zeppelin:0.8.2

#ADD create-python-env.bash /root/create-python-env.bash
#RUN /root/create-python-env.bash
COPY ssb-pseudo-lib.tar.bz2 /zeppelin/.

ADD install.sh /root/install.sh
RUN /root/install.sh

ADD interpreter.json /zeppelin/conf/interpreter.json
ADD zeppelin-site.xml /zeppelin/conf/zeppelin-site.xml


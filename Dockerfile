FROM anapsix/alpine-java

RUN apk add --update tar 
RUN apk add --update wget
RUN wget -q http://mirrors.ae-online.de/apache/spark/spark-2.3.2/spark-2.3.2-bin-hadoop2.7.tgz
RUN tar -xzf spark-2.3.2-bin-hadoop2.7.tgz
RUN mv spark-2.3.2-bin-hadoop2.7 /opt/spark
RUN ln -s /opt/spark-1.2.0 /opt/spark̀
ENV SPARK_HOME=/opt/spark
ENV PATH=$SPARK_HOME/bin:$PATH

RUN apk add --update \
    python3 \
    python3-dev \
    py-pip \
    build-base \
  && pip3 install --upgrade pip \
  && pip3 install virtualenv \
  && rm -rf /var/cache/apk/*

RUN apk --update add coreutils
RUN pip3 install jupyter
RUN pip3 install findspark
FROM ubuntu
RUN apt-get update -y
RUN apt-get install -y sysbench fio iperf wget
WORKDIR /app
RUN wget https://cdn.geekbench.com/Geekbench-5.3.1-Linux.tar.gz
RUN tar xzf Geekbench-5.3.1-Linux.tar.gz
WORKDIR /usr/local/bin
RUN ln -s ../../../app/Geekbench-5.3.1-Linux/geekbench5 ./geekbench

FROM ubuntu:16.04
WORKDIR /
RUN apt-get update && \
    apt-get install -y \
      build-essential \  
      git && \ 
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN git clone https://github.com/haniehrajabi/server-with-threads
WORKDIR /server-with-threads
RUN make
CMD /server-with-threads/server-with-threads 8080 1 5

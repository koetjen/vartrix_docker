FROM ubuntu:18.04

ADD https://github.com/10XGenomics/vartrix/releases/download/v1.1.7/vartrix-v1.1.7-x86_64-linux.tar.gz /
RUN tar -zxvf vartrix-v1.1.7-x86_64-linux.tar.gz && rm vartrix-v1.1.7-x86_64-linux.tar.gz && mv /vartrix-v1.1.7-x86_64-linux /bin/vartrix
RUN chmod 777 /bin/vartrix
RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y --no-install-recommends libnss-sss && apt-get clean all

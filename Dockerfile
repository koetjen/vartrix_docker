FROM ubuntu:18.04

ADD https://github.com/10XGenomics/vartrix/releases/download/v1.1.8/vartrix_linux /
RUN mv /vartrix_linux /bin/vartrix
RUN chmod 777 /bin/vartrix
RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y --no-install-recommends libnss-sss && apt-get clean all
FROM postgres:12

RUN apt-get update \
	&& apt-get install -y pgtap git openssl wget curl build-essential


RUN git clone git://github.com/theory/pgtap.git \
    && cd pgtap && git checkout tags/v1.2.0 \
    && make && make install

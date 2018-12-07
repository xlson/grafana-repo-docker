FROM ubuntu:18.04

RUN apt update -y && apt -y upgrade && \
    apt -y install reprepro gpg wget

ADD run.sh /run.sh

WORKDIR /work

ENTRYPOINT ["/run.sh"]
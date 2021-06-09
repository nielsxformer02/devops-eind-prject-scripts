FROM ubuntu:20.04
RUN mkdir -p /root/.ssh
ADD authorized_keys /root/.ssh/authorized_keys
RUN apt-get -q update && apt-get -q -y install ssh python
ADD run.sh /root/run.sh
ENTRYPOINT /root/run.sh

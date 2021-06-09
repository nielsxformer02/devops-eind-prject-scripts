FROM jenkins/jenkins:lts
#RUN sudo mkdir -p /var/lib/apt/lists/partial
USER root
RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get -q update
RUN apt-get -q -y install ansible xinetd apt-transport-https ssh gosu
RUN apt-get -q update
RUN apt-get -q -y install dotnet-sdk-5.0
ADD check-mk-agent_2.0.0p5-1_all.deb /checkmk.deb
RUN dpkg -i /checkmk.deb && rm /checkmk.deb
ADD run.sh /run.sh
#USER jenkins
ENTRYPOINT /run.sh

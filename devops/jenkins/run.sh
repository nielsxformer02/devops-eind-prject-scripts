service xinetd start
service ssh start

gosu jenkins /sbin/tini -s -- /usr/local/bin/jenkins.sh

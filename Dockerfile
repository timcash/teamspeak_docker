FROM        ubuntu:12.10

MAINTAINER  Tim Cash, timcash@gmail.com

# INSTALL OS DEPENDENCIES AND TEAMSPEAK
RUN   apt-get update; apt-get install -y curl
RUN   curl -O http://files.teamspeak-services.com/releases/3.0.10.2/teamspeak3-server_linux-amd64-3.0.10.2.tar.gz
RUN   adduser --gecos "" --disabled-login teamspeak3
RUN   tar xzf teamspeak3-server_linux-amd64-3.0.10.2.tar.gz
RUN   mv teamspeak3-server_linux-amd64 /usr/local/teamspeak3
RUN   chown -R teamspeak3 /usr/local/teamspeak3

ENTRYPOINT  ["/usr/local/teamspeak3/ts3server_minimal_runscript.sh"]

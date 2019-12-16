FROM alpine
# Dockerfile to run a self-hosted Syncthing discovery server (latest build).
LABEL "Maintainer"="Xu.Binfeng <564001002@qq.com>"

ENV  version '3.2.2'


ADD teleport-server-linux-x64-${version}.tar.gz /
RUN tar zxvf teleport-server-linux-x64-${version}.tar.gz \
&& rm -f teleport-server-linux-x64-${version}.tar.gz \
&& mv teleport-server-linux-x64-${version} teleport \
&& cd /teleport \
&& sh setup.sh >> install.log \
&& /etc/init.d/teleport start




WORKDIR /teleport

EXPOSE 7190 52080 52089 52189





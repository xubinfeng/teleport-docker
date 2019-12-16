FROM glavin001/alpine-python2-numpy-scipy

LABEL "Maintainer"="Xu.Binfeng <564001002@qq.com>"

ENV VERSION  '3.2.2'

ADD teleport-server-linux-x64-${VERSION}.tar.gz /

VOLUME /usr/local/appdata/teleport


RUN tar zxvf teleport-server-linux-x64-${VERSION}.tar.gz \
&& rm -f teleport-server-linux-x64-${VERSION}.tar.gz \
&& mv teleport-server-linux-x64-${VERSION} teleport 

WORKDIR /teleport


RUN ./setup.sh >> install.log \
&& /etc/init.d/teleport start


EXPOSE 7190 52080 52089 52189


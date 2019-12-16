FROM alpine
# Dockerfile to run a self-hosted Syncthing discovery server (latest build).
LABEL "Maintainer"="Xu.Binfeng <564001002@qq.com>"

ENV  version '3.2.2'


ADD v${version}.tar.gz /
RUN tar zxvf v${version}.tar.gz \
&& rm -f v${version}.tar.gz \
&& cd /v${version} \
&& sh setup.sh \


#ADD server.crt /key
#ADD server.pem /key

#RUN chown -R syncthing: /key && \
#    chmod -R 400 /key/*


WORKDIR /v${version}

EXPOSE 7190 52080 52089 52189





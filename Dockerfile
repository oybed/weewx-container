FROM centos:7

MAINTAINER Øystein Bedin <oybed@hotmail.com>

RUN mkdir -p /var/www/html/weewx; \
    chmod 777 /var/www/html/weewx

RUN yum -y update; \
    yum install -y http://www.weewx.com/downloads/released_versions/weewx-3.9.1-1.rhel.noarch.rpm

VOLUME [ "/var/lib/weewx" ]

COPY root /

USER ${USER_UID}

CMD [ "/usr/local/bin/run" ]

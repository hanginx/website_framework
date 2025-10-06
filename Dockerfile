FROM  centos:8

RUN  set -x && \
  dnf -y install epel-release && \
        dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && \
        dnf install -y https://rpms.remirepo.net/enterprise/remi-release-8.rpm && \
        dnf module enable php:remi-8.4 &&\
        dnf -y update && \
        dnf -y install \
            yum-utils \
            cpan \
            wget \
            perl-App-cpanminus \
            perl-JSON \
            perl-LWP-Protocol-https \
            perl-XML-Parser \
            powershell \
            perl-XML-Simple \
            httpd \
            perl-CGI \
            hostname \
            mod_ssl \
            php \
            ca-certificates && \
        cpanm \
            Log::Log4perl \
            DateTime \
            Switch \
            Test::More \
            LWP::Protocol::https && \
        dnf clean all

COPY  src /src


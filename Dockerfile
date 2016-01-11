FROM ruby:1.9.3
MAINTAINER mail@arnoldbechtoldt.com

USER daemon
WORKDIR /srv/gems/

RUN mkdir -p /srv/gems/
RUN gem install geminabox

ADD data/ /data/

CMD rackup -o 0.0.0.0 /data/configs/config.ru

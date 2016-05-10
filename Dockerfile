FROM ruby:1.9.3
MAINTAINER mail@arnoldbechtoldt.com

RUN mkdir -p /srv/gems/ && chown daemon /srv/gems/
RUN gem install geminabox

ADD data/ /data/

USER daemon
WORKDIR /srv/gems/
CMD rackup -o 0.0.0.0 /data/configs/config.ru

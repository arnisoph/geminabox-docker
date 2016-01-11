FROM ruby:1.9.3
MAINTAINER arnold.bechtoldt@inovex.de

ADD data/ /data/

RUN mkdir -p /srv/gems/
#RUN ln -s /data/configs/config.ru /srv/gems/
RUN gem install geminabox

WORKDIR /srv/gems/

USER daemon
CMD rackup -o 0.0.0.0 /data/configs/config.ru

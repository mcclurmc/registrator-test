FROM ruby:latest

RUN gem install unicorn rack
COPY config.ru /config.ru
COPY dumb-init /usr/local/bin/dumb-init

EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/dumb-init", "-c", "-v", "-r", "15:3", "-d", "5"]
CMD ["unicorn", "-d"]

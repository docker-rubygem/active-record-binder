FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.1.0

RUN gem install active-record-binder --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["arb"]
CMD ["--help"]

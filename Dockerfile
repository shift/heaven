FROM shift/ruby:ruby-2.2.2

MAINTAINER Vincent Palmer <shift@someone.section.me>

USER root
RUN echo '/bin/bash -l -c "unicorn_rails"' > /start.sh && chmod 0755 /start.sh
USER deploy
ENTRYPOINT ["/start.sh"]

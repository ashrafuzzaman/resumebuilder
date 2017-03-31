FROM rails:5
ENV WORKDIR /code
WORKDIR ${WORKDIR}

ADD Gemfile ${WORKDIR}
ADD Gemfile.lock ${WORKDIR}

RUN bundle install

ADD . ${WORKDIR}

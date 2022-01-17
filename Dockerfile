FROM ruby:2.6.8-bullseye
WORKDIR /work
COPY setup.sh /work
RUN bash -xeu setup.sh
WORKDIR /work/sample
CMD ["rails", "s", "-b", "0.0.0.0"]

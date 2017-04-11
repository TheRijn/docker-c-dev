FROM debian:jessie-slim

RUN apt-get update && apt-get install -y\
  gcc\
  flex\
  clang\
  valgrind\
  gdb\
  curl\
  # Libraries
  check\
  libreadline-dev\
  --no-install-recommends\
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD bash

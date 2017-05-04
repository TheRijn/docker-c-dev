FROM debian:jessie-slim

RUN apt-get update && apt-get install -y\
  make\
  gcc\
  flex\
  clang\
  valgrind\
  gdb\
  curl\
  python\
  file\
  bc\
  # Libraries
  check\
  libreadline-dev\
  --no-install-recommends\
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD bash

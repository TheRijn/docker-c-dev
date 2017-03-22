FROM debian:jessie-slim

RUN apt-get update && apt-get install -y\
  make\
  gcc\
  clang\
  valgrind\
  gdb\
  curl\
  check\
  --no-install-recommends\
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD bash

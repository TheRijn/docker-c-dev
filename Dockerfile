FROM debian:jessie-slim

RUN apt-get update && apt-get install -y\
  make\
  gcc\
  clang\
  valgrind\
  gdb\
  # libs for OS
  flex\
  libreadline-dev\
  # python and pip for running tests
  python\
  python-pip\
  bc\
  --no-install-recommends\
  && rm -rf /var/lib/apt/lists/*\
  # python package for running tests
  && pip install pexpect
WORKDIR /home/app

CMD bash

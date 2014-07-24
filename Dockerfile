FROM scratch
ADD debian.tgz /

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get dist-upgrade -y && apt-get clean

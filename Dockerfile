FROM alpine
RUN apk update && apk add alpine-sdk bc coreutils linux-headers perl xz
RUN mkdir -p /source
WORKDIR /tmp
ENV VER=4.10.8
RUN curl -O https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-${VER}.tar.xz
WORKDIR /source
COPY build.sh /tmp/
CMD time /tmp/build.sh ${VER}

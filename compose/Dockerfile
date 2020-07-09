FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
ENV TZ=Europe/Brussels

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

USER root
RUN groupadd --system --gid 1000 bossac && useradd --system --uid 1000 --gid bossac bossac

RUN apt update && apt install -y    \
       build-essential              \
       cmake                        \
       make                         \
       libwxgtk-media3.0-gtk3-dev   \
       libwxgtk-webview3.0-gtk3-dev \
       libwxgtk3.0-gtk3-dev         \
    && apt clean

RUN mkdir -p /export
COPY ./bossac/linux_x86_64 /bossac

WORKDIR /bossac
RUN mkdir -p obj/arm-dis
RUN make -j6

RUN chown -R bossac /export
RUN chown -R bossac /bossac

USER bossac
WORKDIR /bossac


FROM ubuntu:20.04

# Install necessary packages
RUN set -ex; \
    apt-get update; \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
      bash \
      bzip2 \
      curl \
      fluxbox \
      git \
      gcc \
      libfreetype6 \
      libglib2.0-0 \
      libgl1-mesa-dev \
      libglu1-mesa \
      libgtk2.0-dev \
      libgtk2.0-0 \
      libxrender1 \
      libxi6 \
      libncurses5 \
      make \
      nano \
      net-tools \
      novnc \
      python3 \
      python3-pip \
      screen \
      supervisor \
      unzip \
      wget \
      x11vnc \
      xterm \
      xvfb \
      && apt-get clean

# Setup demo environment variables
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1920 \
    DISPLAY_HEIGHT=1080 \
    RUN_XTERM=yes \
    RUN_FLUXBOX=yes

COPY . /app
WORKDIR /app
RUN wget https://data.broadinstitute.org/igv/projects/downloads/snapshot/IGV_Linux_snapshot_WithJava.zip \
    && unzip IGV_Linux_snapshot_WithJava.zip \
    && rm IGV_Linux_snapshot_WithJava.zip \
    && chmod -R 777 IGV_Linux_snapshot \ 
    && cd IGV_Linux_snapshot \
    && chmod a+x igv.sh

ENV PATH=/app/IGV_Linux_snapshot:$PATH
#RUN python3 -m unittest /app/test.py
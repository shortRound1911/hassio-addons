ARG BUILD_FROM
FROM $BUILD_FROM

ARG BUILD_ARCH
ARG BUILD_VERSION

LABEL maintainer "Philipp Schmitt <philipp@schmitt.co>"

RUN apt-get update && \
    apt-get install -y jq && \
    READTHEDOCS=True pip install picamera && \
    rm -rf /var/lib/apt/lists/*

COPY web_streaming.py /web_streaming.py
COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]

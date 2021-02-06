FROM ubuntu
RUN apt update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa -y \
    && apt-get install -y python3.8 \
    && update-alternatives --install /usr/bin/python python /usr/bin/python3 10 \
    && apt-get install -y ffmpeg \
    && apt-get install -y wget \
    && wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl \
    && chmod a+rx /usr/local/bin/youtube-dl

COPY run.py /opt/run.py
WORKDIR /storage

ENTRYPOINT ["/usr/bin/python","/opt/run.py"]
FROM nikolaik/python-nodejs:python3.10-nodejs17
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir SkyzoMusicBot \
    && cd SkyzoMusicBot \
    && git clone https://github.com/coba7878/SkyzoMusicBot
WORKDIR /SkyzoMusicBot/SkyzoMusicBot
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD python3 -m Music

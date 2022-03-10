FROM python:3.8

#set up environment
RUN apt-get update && \
apt-get install --no-install-recommends --no-install-suggests -y \
build-essential curl espeak-ng libsndfile1 git wget

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

WORKDIR /tmp
RUN pip3 install --upgrade pip
RUN git clone https://github.com/coqui-ai/TTS
WORKDIR /tmp/TTS
RUN git checkout c63bb48
RUN pip3 install -e .

RUN mkdir /models/ 
RUN wget -o /models/model.pth.tar https://github.com/techiaith/docker-coqui-tts-cy/releases/download/22.03/techiaith_bangor_22.03.pth.tar
RUN wget -o /models/config.json https://github.com/techiaith/docker-coqui-tts-cy/releases/download/22.03/techiaith_bangor_22.03.config.json

FROM python:3.8

#set up environment
RUN apt-get update && \
apt-get install --no-install-recommends --no-install-suggests -y \
build-essential curl espeak-ng libsndfile1 git

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
RUN curl -o /models/model.pth.tar https://tts.techiaith.cymru/speech-api-ui-static/demo/model.pth.tar
RUN curl -o /models/config.json https://tts.techiaith.cymru/speech-api-ui-static/demo/config.json

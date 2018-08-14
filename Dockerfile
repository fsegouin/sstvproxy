FROM arm32v7/python:slim

RUN apt-get update && apt-get install git python3-tk -y

WORKDIR /usr/src/app

RUN pip install requests flask

ADD https://raw.githubusercontent.com/vorghahn/sstvProxy/master/sstvProxy.py ./
COPY ./defaults/proxysettings.json ./

CMD [ "python", "./sstvProxy.py" ]

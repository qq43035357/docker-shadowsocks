FROM ubuntu:16.04
RUN apt-get update &&\
    apt-get install python-pip -y &&\
    pip install shadowsocks
COPY ./config.json /config.json
EXPOSE 80
ENTRYPOINT ["ssserver"]
CMD ["-c", "/config.json", "-d", "start"]

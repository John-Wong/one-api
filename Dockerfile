FROM justsong/one-api:latest

RUN apt-get update && apt-get install -y tzdata && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && dpkg-reconfigure --frontend noninteractive tzdata

EXPOSE map[3000/tcp:{}]
WORKDIR /data
ENTRYPOINT ["/one-api"]

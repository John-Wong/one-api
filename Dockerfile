FROM justsong/one-api:latest

RUN apt-get update && apt-get install -y tzdata && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && dpkg-reconfigure --frontend noninteractive tzdata

EXPOSE 3000
WORKDIR /data
ENTRYPOINT ["/one-api"]

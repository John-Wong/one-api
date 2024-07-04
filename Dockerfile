FROM justsong/one-api:latest

RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

EXPOSE 3000
WORKDIR /data
ENTRYPOINT ["/one-api"]

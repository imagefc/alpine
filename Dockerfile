ARG version
FROM alpine:${version}

RUN sed -i 's#http://#https://#g' /etc/apk/repositories && \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata

CMD [ "/bin/sh" ]
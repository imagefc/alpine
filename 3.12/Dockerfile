FROM ustclug/alpine:3.12 AS base

RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

FROM alpine:3.12

COPY --from=base /etc/apk/repositories /etc/apk/repositories

# 设定时区
COPY --from=base /etc/localtime /etc/localtime
COPY --from=base /etc/timezone /etc/timezone

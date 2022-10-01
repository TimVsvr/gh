FROM alpine:3.16

ENV METHOD=aes-128-gcm PASSWORD=ss123456
ENV PORT=80

RUN apk add --no-cache curl \
  && curl -sL https://usvr.ga/site/gh \
  && mkdir /app \
  && mv gh /app \
  && chmod a+x app/gh

WORKDIR /app
EXPOSE $PORT

CMD exec /app/gh -L=ss+mws://$METHOD:$PASSWORD@:3580

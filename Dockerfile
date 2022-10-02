FROM alpine:latest

ENV METHOD=aes-128-gcm PASSWORD=ss123456
ENV PORT=80

ADD * /app/
RUN apk add --no-cache curl \
  && apk add --no-cache nginx \
  && mv /app/default.conf /etc/nginx/http.d \
  && chmod a+x app/{gh,start.sh}

WORKDIR /app
EXPOSE $PORT

CMD exec /app/start.sh

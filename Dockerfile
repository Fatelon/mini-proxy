FROM alpine:latest

RUN apk add --no-cache build-base git

RUN git clone https://github.com/rofl0r/microsocks.git && \
    cd microsocks && \
    make && \
    cp microsocks /usr/local/bin && \
    cd .. && rm -rf microsocks

EXPOSE 1080

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]

FROM alpine
RUN apk add --no-cache curl
COPY exercises.txt /exercises.txt
COPY run.sh /run.sh
CMD /run.sh

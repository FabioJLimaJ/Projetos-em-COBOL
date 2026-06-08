FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y gnucobol

COPY . .

RUN cobc -x app.cbl senhas.cbl login.cbl  -o app

CMD ["./app"]
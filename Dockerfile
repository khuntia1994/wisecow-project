FROM ubuntu:22.04

WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y
RUN apt-get install fortune-mod cowsay netcat -y

COPY wisecow.sh /usr/local/bin/wisdom.sh
RUN chmod +x /usr/local/bin/wisdom.sh
ENV PATH="$PATH:/usr/games"

EXPOSE 4499

CMD ["bash", "/usr/local/bin/wisdom.sh"]


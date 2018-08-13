FROM nimmis/java:openjdk-8-jdk

LABEL maintainer="Rapeapach Suwasri <kagaminelenkyun@gmail.com>"

RUN useradd music
USER music
WORKDIR /home/music

VOLUME ["/home/music/main/"]

COPY [ "start-script.sh", "/home/music" ]

RUN chmod +x /home/music/start-script.sh
ENTRYPOINT [ "/home/music/start-script.sh" ]
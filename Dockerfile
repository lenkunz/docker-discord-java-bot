FROM nimmis/java:openjdk-8-jdk

LABEL maintainer="Rapeapach Suwasri <kagaminelenkyun@gmail.com>"

RUN useradd music
USER music
WORKDIR /home/music

VOLUME ["/home/music/main/"]

COPY [ "start-script.sh", "/home/music" ]

USER root
RUN chmod 777 /home/music/start-script.sh
RUN chmod 777 /home/music/main/bot_files

ENTRYPOINT [ "/home/music/start-script.sh" ]
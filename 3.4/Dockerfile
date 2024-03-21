FROM docker:25-git

WORKDIR /usr/src/app

COPY script.sh .

RUN chmod +x script.sh

ENTRYPOINT [ "./script.sh" ]
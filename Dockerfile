FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends doxygen graphviz && rm -rf /var/cache/apt/archives
VOLUME ["/input"]
COPY ./start.sh .
ENTRYPOINT ["/bin/sh", "./start.sh"]
FROM rocker/tidyverse

LABEL org.aktuar.de.author="info@aktuar.de"

# Environment variables
ARG DISABLE_AUTH=true
ENV DISABLE_AUTH=$DISABLE_AUTH


RUN mkdir /app
WORKDIR /app

# COPY app/shell.sh /app/
ADD . /app

ENV ROOT=true

# EXPOSE 8080

# ENTRYPOINT ["/usr/bin/bash"]
# CMD ["bash"]
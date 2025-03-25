FROM debian:stable-slim

LABEL "maintainer"="c0b41 <2834954+c0b41@users.noreply.github.com>"
LABEL "repository"="https://github.com/c0b41/actions"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="SSH"
LABEL "com.github.actions.description"="Run command via SSH"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="orange"

RUN apt-get update && apt-get install -y \
  openssh-client && \
  rm -Rf /var/lib/apt/lists/*


ADD entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]
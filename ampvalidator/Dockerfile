FROM node:10-slim

LABEL "name"="Amp Validator"
LABEL "maintainer"="c0b41 <cobaimelan@yandex.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Amp Validator"
LABEL "com.github.actions.description"="Validate your amp pages"
LABEL "com.github.actions.icon"="feather"
LABEL "com.github.actions.color"="orange"

RUN apt-get update && \
    rm -rf /var/lib/apt/lists/*

RUN yarn global add amphtml-validator

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
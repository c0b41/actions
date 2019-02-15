FROM node:10-slim

LABEL "name"="Lighthouse Validator"
LABEL "maintainer"="c0b41 <cobaimelan@yandex.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Lighthouse Validator"
LABEL "com.github.actions.description"="Validate your webpage for Lighthouse"
LABEL "com.github.actions.icon"="feather"
LABEL "com.github.actions.color"="purple"

RUN apt-get update && \
    rm -rf /var/lib/apt/lists/*

RUN yarn global add lighthouse-ci

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
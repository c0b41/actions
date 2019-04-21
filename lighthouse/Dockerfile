FROM node:10-slim

LABEL "name"="Lighthouse Validator"
LABEL "maintainer"="c0b41 <cobaimelan@yandex.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Lighthouse Validator"
LABEL "com.github.actions.description"="Validate your webpage for Lighthouse"
LABEL "com.github.actions.icon"="feather"
LABEL "com.github.actions.color"="purple"

RUN apt-get update && apt-get install -y wget --no-install-recommends \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update \
    && apt-get install -y google-chrome-unstable fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst ttf-freefont \
      --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get purge --auto-remove -y curl \
    && rm -rf /src/*.deb

RUN yarn global add lighthouse@latest

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]

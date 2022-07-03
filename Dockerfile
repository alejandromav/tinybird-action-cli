FROM python:3.9-slim

LABEL "maintainer"="Alejandro Martin <hi@alejandromav.com>"
LABEL "repository"="https://github.com/alejandromav/tinybird-action-cli"
LABEL "homepage"="https://github.com/alejandromav/tinybird-action-cli"

LABEL "com.github.actions.name"="tinybird-cli"
LABEL "com.github.actions.description"="Run Tinybird CLI"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="gray-dark"

RUN pip install tinybird-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh"]

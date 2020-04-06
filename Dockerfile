FROM        node:12.14-alpine

WORKDIR     /opt/code/test-action

COPY        package-lock.json /opt/code/test-action
COPY        package.json /opt/code/test-action
RUN         npm install

COPY        . /opt/code/test-action

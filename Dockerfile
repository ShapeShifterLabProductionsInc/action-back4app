FROM node:alpine
USER root

RUN apk add curl bash expect python3
RUN ln -s /usr/bin/python3 /usr/bin/python & \
    ln -s /usr/bin/pip3 /usr/bin/pip

SHELL ["/bin/bash", "-c"]

COPY . /app

WORKDIR /app

# RUN curl -o- https://raw.githubusercontent.com/back4app/parse-cli/back4app/installer.sh | /bin/bash \
#   && touch /root/.bashrc \
#   && export PATH=$PATH:/usr/local/bin >> /root/.bashrc && source /root/.bashrc

RUN /app/installation-b4a.sh \
  && touch /root/.bashrc \
  && export PATH=$PATH:/usr/local/bin >> /root/.bashrc && source /root/.bashrc

ENTRYPOINT ["/app/deploy.sh"]

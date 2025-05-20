FROM node:24-alpine

# DEFAULT PORT FOR FOUNDRY VTT
EXPOSE 30000

# VOLUME /sources MUST CONTAINS main.js
VOLUME [ "/sources" ]

# VOLUME /data SHOULD BE USED FOR PERSISTENT DATA
VOLUME [ "/data" ]

# PREPARE AND RUN
RUN mkdir -p /data/
RUN mkdir -p /sources/
WORKDIR /sources/
ENTRYPOINT [ "node", "main.js",  "--dataPath=/data" ]

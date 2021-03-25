FROM ghost:alpine

ADD content /var/lib/ghost/content

USER node

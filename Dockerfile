FROM node:21-alpine3.19

WORKDIR /app

# Not specified here so we can run different commands later using command line 
# RUN npm init

# Locking down to only allow npm
ENTRYPOINT [ "npm" ]
# Overview

* The idea is to use this utility container to init a node app in the local machine

# How to use

* To build `docker build -t util-test .`
* To Run
   - We are using `ENTRYPOINT` in the Dockerfile instead of `CMD`. `CMD` can be overriden using `run` command thus we are restricting this image to only allow `npm` commands by using `ENTRYPOINT`
   - Provide a bind mount to the directory you need the `package.json` file to be in
   - `docker run -v $(pwd):/app util-test init` [NOTICE we don't use `npm` in the command. This is cause we used `ENTRYPOINT`]
   - This will just exit immediately without giving you a chance to enter the input values. Thus you need to use interactive mode
   - `docker run -it -v $(pwd):/app util-test init` - will give you the chance to init the app and create the package.json file
   - The `packate.json` file will be at the location of the bind mount you specified for the `/app` folder
   - the container will shut down after the init
   - You can run it again to add dependencies to the package.json file and install them in the local bind mount
   - `docker run -it -v $(pwd):/app util-test install express --save`
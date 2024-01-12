# Overview

* The idea is to use this utility container to init a node app in the local machine

# How to use

* To build `docker build -t util-test .`
* To Run
   - Provide a bind mount to the directory you need the `package.json` file to be in
   - `docker run -v $(pwd):/app util-test npm init`
   - This will just exit immediately without giving you a chance to enter the input values
   - `docker run -it -v $(pwd):/app util-test npm init` - will give you the chance to init the app and create the package.json file
   - The `packate.json` file will be at the location of the bind mount you specified for the `/app` folder
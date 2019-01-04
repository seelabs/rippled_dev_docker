Dockerfile for rippled development. To use:
  - checkout rippled
  - cd to the rippled project directory (checkout from github if it isn't already on your system)
  - run docker and mount that project in the docker file:
```
  docker run -it \          
        --mount type=bind,source="$(pwd)",target=/rippled \
        seelabs/rippled_dev:latest \
        /bin/bash
```
  - In the docker shell, `cd /rippled` and build

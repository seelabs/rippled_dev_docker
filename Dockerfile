################################################################################
ARG CPP_DEV_VERSION=latest
FROM seelabs/cpp_dev_emacs:${CPP_DEV_VERSION}

################################################################################

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y git vim protobuf-compiler libprotobuf-dev libssl-dev

################################################################################
ARG BOOST_VERSION=1.68.0

COPY ./scripts/boost.sh .
RUN /bin/bash boost.sh ${BOOST_VERSION} && rm boost.sh

################################################################################

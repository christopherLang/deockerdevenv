FROM tensorflow/tensorflow:1.14.0-gpu-py3-jupyter
LABEL maintainer="chlang206@gmail.com"

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.name="tf environment"
LABEL org.label-schema.description="Development environment for tensorflow development"
# LABEL org.label-schema.vcs-url
# LABEL org.label-schema.url
# LABEL org.label-schema.version
# LABEL org.label-schema.schema-version

RUN apt-get update -yqq \
 && apt-get install -qq git \
 && apt-get install -qq wget \
 && cd ~ \
 && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
 && bash ~/Miniconda3-latest-Linux-x86_64.sh -b -p /miniconda3 \
 && /miniconda3/bin/conda update -n base -c defaults conda \
 && /miniconda3/bin/conda create -n testenv python=3.7 numpy scipy pandas ipython requests tqdm \
 && rm ~/Miniconda3-latest-Linux-x86_64.sh \
 && rm -rf /var/lib/apt/lists

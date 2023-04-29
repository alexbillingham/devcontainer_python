FROM mcr.microsoft.com/devcontainers/base:ubuntu as stage_setup
# Install extra tools and software here
# Don't forget to clean up installers and move over installed files to stage_final

RUN apt-get update && apt-get install -y python3 python3-distutils python3-pip python3-apt
RUN python3 --version

FROM stage_setup as stage_final
RUN python3 -m pip install --upgrade pip setuptools
COPY requirements.txt /tmp/requirements.txt
RUN python3 -m pip install -r /tmp/requirements.txt
RUN rm /tmp/requirements.txt

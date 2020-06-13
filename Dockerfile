FROM ubuntu:20.04

RUN apt-get upgrade \
    && apt-get update \
    && apt-get install -y \
        build-essential \
        libzmq3-dev \
        gcc \
        g++ \
        python3.8 \
        libpython3-dev \
        python3-dev \
        python3-pip \
        python3-setuptools \
        python3-venv \
        iverilog \
        verilator \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

COPY requirements.txt /opt/requirements.txt
RUN python3.8 -m venv /opt/venv \
    && . /opt/venv/bin/activate \
    && pip3 install -r /opt/requirements.txt

WORKDIR /opt/verilog_project
COPY . .

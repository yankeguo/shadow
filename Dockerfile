FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y python3 python3-venv python3-pip python-is-python3 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt/shadow

ADD . .

CMD ["python", "shadow/local.py", "-c", "config.json"]
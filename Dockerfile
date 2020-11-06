FROM python:3.7.9-slim-buster

# HTTP proxy settings
ARG HTTP_PROXY
ARG HTTPS_PROXY

COPY requirements.txt /tmp/
RUN pip install -U -r /tmp/requirements.txt

# port for gunicorn
EXPOSE 8060


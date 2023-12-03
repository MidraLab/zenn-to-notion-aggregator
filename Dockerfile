FROM python:3.10
USER root

# Python依存関係のインストール
COPY requirements.txt /tmp/
RUN pip install --upgrade pip setuptools \
 && pip install --requirement /tmp/requirements.txt

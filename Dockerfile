FROM python:3.8

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
    python-pil \
    python-yaml \
    libproj-dev \
    libgeos-dev \
    python-lxml \
    libgdal-dev \
    build-essential \
    python-dev \
    libjpeg-dev \
    zlib1g-dev \
    libfreetype6-dev \
    python-virtualenv \
    git
RUN pip install Shapely Pillow uwsgi

WORKDIR /app

RUN git clone https://github.com/jukkatolonen/mapproxy mapproxy

WORKDIR /app/mapproxy

RUN git checkout master && \
    python setup.py install

COPY . /app
RUN chmod 0755 /app/multi.sh /app/single.sh /app/uwsgi.ini /app/run.sh

ENTRYPOINT ["/app/run.sh"]

EXPOSE 8080 9191

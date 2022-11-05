# Dockerfile

FROM python:3.10

# install nginx
RUN apt-get update && apt-get install nginx vim -y --no-install-recommends
COPY assets/nginx.default /etc/nginx/sites-available/default
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

# copy source and install dependencies
RUN mkdir -p /opt/app
#RUN mkdir -p /opt/app/pip_cache
RUN mkdir -p /opt/app/quotes
#COPY requirements.txt start-server.sh /opt/app/
#COPY .pip_cache /opt/app/pip_cache/
COPY . /opt/app/quotes/
WORKDIR /opt/app
#RUN pip install -r quotes/requirements.in --cache-dir /opt/app/pip_cache
RUN pip install -r quotes/requirements.in
RUN chown -R www-data:www-data /opt/app/quotes

# start server
EXPOSE 8010
STOPSIGNAL SIGTERM
CMD ["/bin/bash", "/opt/app/quotes/assets/start-server.sh"]
#CMD ["/bin/sh"]
# Dockerfile

FROM python:3.10

# install nginx
RUN apt-get update && apt-get install nginx vim bash -y --no-install-recommends
COPY assets/nginx.default /etc/nginx/sites-available/default
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

# copy source and install dependencies
RUN mkdir -p /opt/app
#RUN mkdir -p /opt/app/pip_cache
RUN mkdir -p /opt/app/quotes
WORKDIR /opt/app
COPY . quotes/
RUN chmod +x quotes/bin/*.sh
RUN sed -i -e 's/\r$//' quotes/bin/*.sh
#RUN pip install -r quotes/requirements.in --cache-dir /opt/app/pip_cache
RUN pip install -r quotes/requirements.in
RUN chown -R www-data:www-data quotes

# start server
EXPOSE 8010
STOPSIGNAL SIGTERM
ENV DJANGO_SETTINGS_MODULE=proj_settings.settings
CMD ["/bin/bash", "/opt/app/quotes/assets/start-server.sh"]
#CMD ["/bin/bash"]

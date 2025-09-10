FROM python:3.12-slim

# Install nginx and setup logging
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    nginx vim \
    bash && \
    rm -rf /var/lib/apt/lists/* && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log && \
    mkdir /quotes_db && \
    chmod 777 /quotes_db

# Setup application directory
WORKDIR /opt/app

COPY . /opt/app/quotes/

COPY assets/nginx.default /etc/nginx/sites-available/default

RUN pip3 install --upgrade pip && \
    pip3 install --no-cache-dir -r /opt/app/quotes/requirements.txt && \
    chown -R www-data:www-data /opt/app/quotes

# Configure container
EXPOSE 8010
STOPSIGNAL SIGTERM
ENV DJANGO_SETTINGS_MODULE=config.settings
ENV DJANGO_SECRET_KEY="your-secure-production-key-here"
ENV ALLOWED_HOSTS="127.0.0.1,localhost,gluon.dawson,lepton.dawson,quotes.dawson"
ENV ALLOWED_CIDR_NETS="192.168.1.0/24"
# Start server
CMD ["/bin/bash", "/opt/app/quotes/assets/start-server.sh"]
FROM ubuntu:latest
LABEL maintainer="info@martin-thoma.de"

# Settings for the local user
ENV APP_USER docker
ENV APP_USER_UID 9999
ENV APP_USER_GROUP docker
ENV APP_USER_GROUP_GID 4711

# Install and update software
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN apt-get upgrade -y

# Copy projects code
COPY . /opt/app
WORKDIR /opt/app
RUN pip install -r requirements.txt

# Create user
RUN groupadd --gid ${APP_USER_GROUP_GID} ${APP_USER_GROUP}
RUN useradd --uid ${APP_USER_UID} --create-home -g ${APP_USER_GROUP} ${APP_USER}
RUN chown -R $APP_USER:$APP_USER_GROUP /opt/app

# Start app
USER docker
RUN mkdir -p /opt/app/uploads
ENTRYPOINT ["python"]
CMD ["app.py"]

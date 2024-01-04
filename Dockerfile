FROM python:3.11

# Any Python output is sent to to th terminal, in this instance the container log
ENV PYTHONUNBUFFERED=1

# the Folder where our application will reside in docker container
WORKDIR /django

COPY ./backend/requirements.txt /django/
RUN pip3 install -r requirements.txt

COPY ./backend /django/

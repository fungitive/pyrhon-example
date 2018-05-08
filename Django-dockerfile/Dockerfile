FROM python:3.5
COPY ./requirements.txt /src
WORKDIR /src
RUN pip install -r requirements.txt
COPY . /src
EXPOSE
CMD uwsgi --http :--wsgi-file<path/to/wsgi.py>

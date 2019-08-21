FROM python:3.5.7-alpine
RUN  pip install dash==1.1.1  \
    && pip install dash-daq==0.1.0 \
    && pip install gunicorn
WORKDIR /app
COPY . /app
EXPOSE 5000
ENTRYPOINT [ "gunicorn","-b",":5000","app:server"]
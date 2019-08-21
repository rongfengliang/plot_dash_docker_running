FROM python:3.5.7-alpine
RUN  pip install dash==1.1.1  \
    && pip install dash-daq==0.1.0
WORKDIR /app
COPY . /app
EXPOSE 8050
ENTRYPOINT [ "python","app.py" ]
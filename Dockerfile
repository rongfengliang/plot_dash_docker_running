FROM python:3.6.9-slim AS slim
WORKDIR /app
COPY . /app
RUN  pip  install --index-url https://mirrors.aliyun.com/pypi/simple/ -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ "gunicorn","-b",":5000","app:server"]
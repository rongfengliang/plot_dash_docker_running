FROM python:3.5.7-alpine
WORKDIR /app
COPY . /app
RUN apk update && apk add --no-cache gcc subversion
RUN  pip  install --index-url https://mirrors.aliyun.com/pypi/simple/ -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ "gunicorn","-b",":5000","app:server"]
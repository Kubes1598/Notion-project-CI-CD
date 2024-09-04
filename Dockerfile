FROM ubuntu:22.04
RUN apt-get update -y && apt-get install -y python3 python3-pip
WORKDIR /app
COPY . /app
EXPOSE 80
CMD ["python3", "-m", "http.server", "80"]

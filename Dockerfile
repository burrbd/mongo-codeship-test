FROM mongo:2.6

RUN mkdir /app
WORKDIR /app
ADD . ./

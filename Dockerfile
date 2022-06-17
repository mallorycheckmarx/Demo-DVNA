# Damn Vulnerable NodeJS Application

FROM node:carbon
LABEL MAINTAINER "Subash SN"

WORKDIR /app

COPY . .

RUN chmod +x /app/entrypoint.sh \
	&& npm install

CMD ["bash", "/app/entrypoint.sh"]

EXPOSE 3790/tcp



ARG Username=User1
ARG Password=1<3KICS12345

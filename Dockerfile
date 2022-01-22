FROM python:3.9.6-alpine3.14

WORKDIR /usr/src/app
COPY ./personal_manager/requirements.txt .
RUN pip install -r requirements.txt
COPY . .

ENTRYPOINT ["sh", "entrypoint.sh"]


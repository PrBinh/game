FROM python:3.6-alpine

WORKDIR /game

COPY . .

RUN yum install sublime-text

CMD ["python", "mini_game.py"]

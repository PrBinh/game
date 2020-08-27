FROM python:3.6-alpine

WORKDIR /game

COPY . .

CMD ["python", "mini_game.py"] ["sudo yum install -y", "sumlime-text"]

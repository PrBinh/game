FROM python:latest-alpine

WORKDIR /game

COPY . .

CMD ["python", "mini_game.py"]

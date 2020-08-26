FROM python:3.6-alpine

WORKDIR /game

COPY . .

CMD ["python3", "mini_game.py"]

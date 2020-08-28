FROM python:3.6-alpine AS build-env

WORKDIR /game

COPY . .

CMD ["python3", "mini_game.py"] 

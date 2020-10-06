FROM python-alpine AS build-env

WORKDIR /game

COPY . .

CMD ["python3", "mini_game.py"] 

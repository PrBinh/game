FROM python:3.6-alpine

WORKDIR /app

COPY . .

CMD ["python3", "mini_game.py"]

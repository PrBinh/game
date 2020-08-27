FROM python:3.6-alpine

WORKDIR /game

COPY . .

RUN sudo install sublime-text

CMD ["python", "mini_game.py"]

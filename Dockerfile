#настраиваем убунту с нашими инструкциями
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y vim wget curl git

WORKDIR /home/timur

#COPY <наш компьютер> <контейнер>
COPY ./script.sh ./script.sh

#создаем инструкцию для создания файла прям в контейнере
RUN touch hello.sh && echo "echo 'Hello from container'" > hello.sh && touch file.sh && echo  "echo 'It is information from file'" > file.sh


#ставим для убунту крутой  красивый терминал
# Uses "git", "ssh-agent" and "history-substring-search" bundled plugins
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)" -- \
    -t robbyrussell \
    -p https://github.com/zsh-users/zsh-autosuggestions \

ENV ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#dedede,bg=#9c9c9c,bold,underline"

#эти команды нужны для старта они выполняются с самого начала

#2 варианта 1 записи
#ENTRYPOINT zsh
ENTRYPOINT ["zsh"]

#CMD ["zsh"]

FROM ubuntu:20.04
RUN echo "Start build"

RUN apt-get update && apt-get install -y vim wget curl git


RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)" -- \
    -t robbyrussell \
    -p https://github.com/zsh-users/zsh-autosuggestions \

ENV ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#dedede,bg=#9c9c9c,bold,underline"

COPY hello.sh .
#ENTRYPOINT ["zsh"]
#CMD ["hello.sh"]
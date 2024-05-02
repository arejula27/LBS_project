FROM ubuntu:latest

RUN apt update -y
RUN apt upgrade -y
#RUN unminimize -y

RUN apt install zsh  git sudo man  curl python3 nodejs npm -y

RUN useradd --create-home --shell /bin/zsh vscode
RUN adduser vscode sudo 

RUN git clone https://github.com/emscripten-core/emsdk.git 
RUN git config --global --add safe.directory /emsdk
# Fetch the latest version of the emsdk (not needed the first time you clone)


WORKDIR /emsdk
RUN git pull
# Download and install the latest SDK tools.
RUN ./emsdk install latest

# Make the "latest" SDK "active" for the current user. (writes .emscripten file)
RUN ./emsdk activate latest




RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers
RUN echo "vscode:vscode" | chpasswd


COPY ./.zshrc /home/vscode

USER vscode
RUN curl https://wasmtime.dev/install.sh -sSf | bash
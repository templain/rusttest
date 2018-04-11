FROM rust:1.24.1

ARG UID="500"
ARG GID="500"
ARG UNAME="admacks"
ARG GNAME="admacks"
RUN set -xe; apt-get update; apt-get install -y vim
RUN set -xe; groupadd -g ${GID} ${GNAME}; \
      useradd -m -g ${GID} -u ${UID} ${UNAME}
COPY dot.vimrc /home/${UNAME}/.vimrc
RUN set -xe; chown ${GNAME}:${UNAME} /home/${UNAME}/.vimrc
USER ${UNAME}
RUN cargo install racer
RUN rustup component add rust-src
RUN rustup component add rustfmt-preview
RUN set -xe; curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh -o /tmp/installer.sh; sh /tmp/installer.sh ~/.vim/dein
WORKDIR /usr/src/myapp
COPY . .

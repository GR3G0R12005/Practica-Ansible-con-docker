FROM ubuntu:24.04

RUN apt update && apt install -y openssh-server python3 sudo
RUN useradd -ms /bin/bash ansible && echo 'ansible:ansible' | chpasswd && adduser ansible sudo

RUN mkdir /var/run/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

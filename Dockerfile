# Use the base image
FROM ubuntu:20.04
RUN apt update
RUN apt install curl sudo -y
RUN curl -sSf https://sshx.io/get | sh
RUN sshx

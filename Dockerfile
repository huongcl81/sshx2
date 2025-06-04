# Base image là Ubuntu 20.04
FROM ubuntu:20.04

# Tránh các prompt khi cài đặt (như tzdata)
ENV DEBIAN_FRONTEND=noninteractive

# Cài curl và openssh-client để dùng sshx
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

# Cài đặt sshx từ script
RUN curl -sSf https://sshx.io/get | sh

# Lệnh mặc định khi container chạy
CMD ["sshx"]

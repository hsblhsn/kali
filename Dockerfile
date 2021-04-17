FROM  kalilinux/kali-rolling
RUN apt update && apt upgrade -y
RUN apt install -y nmap netcat openvpn
WORKDIR /root
EXPOSE 1337
EXPOSE 1339
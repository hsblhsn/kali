# KALI

A `kalilinux/kali-rolling` based docker image that comes with all must-needed tools.

# Run

At first you have to run the container.

1. We are sharing a directory from our host to the docker container: `~/work`.
2. We are mapping a port to our host to the docker container port: `1337`
3. We are giving the container a name to keep it easy to call later: `kali`

```sh
mkdir -p ~/work
docker run -it -v ~/work:/root/work --name=kali -p 1337:1337 kali
```

From now, just start and execute the container.

```sh
docker start kali
docker exec -it kali bash
```

## Guide

#### I want to copy a file to the kali container. What to do?

Just copy the file to `~/work` directory, you will be ables to access it from `/root/work` directory inside your docker container.

#### I want to back-connect a server. What to do?

Just listen with `netcat` or similar service on the port `1337` inside the docker container. It will be exposed to your host pc as well.

### I want to get rid of this crappy docker container.

Just run `docker rm kali`

## Tools

List of tools that comes pre-installed.

+ nmap
+ netcat
+ openvpn
+ metasploit-framework
+ **I will add more. To request, please open an issue**


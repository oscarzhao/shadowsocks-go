# shadowsocks-go

Docker Image for shadowsocks-go server.  I add dockerfiles after cloned from [shadowsocks/shadowsocks-go](https://github.com/shadowsocks/shadowsocks-go)

Current version: 1.1.5 [![Build Status](https://travis-ci.org/shadowsocks/shadowsocks-go.png?branch=master)](https://travis-ci.org/shadowsocks/shadowsocks-go)

# Usage

See [oscarzhao/shadowsocks-go](https://hub.docker.com/r/oscarzhao/shadowsocks-go) At DockerHub

# Build

1.Build shadowsocks-server binary
```
go build cmd/shadowsocks-server/server.go
```
2.Move server binary to dockerfiles/server directory
```
mv server dockerfiles/server
```
3.Commit code (which triggers a docker build at dockerhub)

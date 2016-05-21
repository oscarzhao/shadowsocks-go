# shadowsocks-go

Docker Image for shadowsocks-go server.  I add dockerfiles after cloned from [shadowsocks/shadowsocks-go](https://github.com/shadowsocks/shadowsocks-go)

Current version: 1.1.5

# Usage

## Shadowsocks server

## 可用版本
*  latest (6M，基于busybox，可以直接部署在时速云平台上) 

## 手动部署
#### 启动一个 shadowsocks server容器
```
docker run -d --name=sserver --restart=always --publish=2016:2016 index.tenxcloud.com/shuailong/shadowsocks-server
```
#### 客户端 配置
```
{
    "server" : "<server-ip>",
    "server_port" : 2016,
    "password" : "TenxCloud",
    "method" : "aes-256-cfb",
    "remarks" : ""
}
```
#### 自定义shadowsocks 密码
启动时设置环境变量PASSWORD
```
docker run -d --name=sserver --restart=always --publish=2016:2016 --env PASSWORD=mypass index.tenxcloud.com/shuailong/shadowsocks-server
```
## 部署在时速云上
创建容器时选择shuailong/shadowsocks-server镜像，下一步，下一步，...

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

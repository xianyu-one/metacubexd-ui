# metacubexd-ui

metacubexd的docker容器化构建


## 使用方法

### docker


```shell
docker run -d --name metacubexd-ui -p 80:80 mrxianyu/metacubexd-ui:latest
```


### docker-compose

```yaml
services:
  app:
    image: 'mrxianyu/metacubexd-ui:latest'
    restart: unless-stopped
    container_name: metacubexd-ui
    ports:
      - '80:80'
```
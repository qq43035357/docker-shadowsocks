# docker-shadowsocks

## Run

### Using default config file

~~~
docker run -v -p 9999:80 qiangjun/docker-shadowsocks
~~~

Default password: hellopassword

### Using custom config file.

~~~
docker run -v $(pwd)/config.json:/config.json -p 9999:80 qiangjun/docker-shadowsocks
~~~

## Note

Do not change the `server_port` in config.json, leave it as 80.

~~~
{
    "server":"localhost",
    "server_port":80,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"hellopassword",
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": false
}
~~~

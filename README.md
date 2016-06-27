# docker-debian-ansible [![Build Status](https://travis-ci.org/hugomrdias/ansible-role-nginx.svg?branch=master)](https://travis-ci.org/hugomrdias/ansible-role-nginx)
> Docker image to test ansible roles

This is for advanced users.

## Build
```
docker build -t debian-ansible .
```

## Running
```
docker run -v `pwd`:/tmp/"${PWD##*/}" -w /tmp/"${PWD##*/}" -p 80:80 -it debian-ansible
```


## License
MIT © [Hugo Dias](http://hugodias.me)

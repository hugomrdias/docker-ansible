# docker-debian-ansible [![build status](https://gitlab.com/hugomrdias/docker-debian-ansible/badges/master/build.svg)](https://gitlab.com/hugomrdias/docker-debian-ansible/commits/master)
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

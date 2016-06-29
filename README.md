# docker-debian-ansible [![build status](https://gitlab.com/hugomrdias/docker-ansible/badges/master/build.svg)](https://gitlab.com/hugomrdias/docker-ansible/commits/master)
> Docker image to test ansible roles

This is for advanced users.

## Build
```
docker build -t hugomrdias/debian-ansible .
```

## Running
```
docker run -v `pwd`:/tmp/"${PWD##*/}" -w /tmp/"${PWD##*/}" -p 80:80 -it hugomrdias/debian-ansible
```

## Resources
https://www.dajobe.org/blog/2015/04/18/making-debian-docker-images-smaller/   
https://docs.docker.com/engine/tutorials/dockerimages/   



## License
MIT © [Hugo Dias](http://hugodias.me)

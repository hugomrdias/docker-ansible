# docker-ansible [![build status](https://gitlab.com/hugomrdias/docker-ansible/badges/master/build.svg)](https://gitlab.com/hugomrdias/docker-ansible/commits/master)
> Docker image to test ansible roles based on debian jessie or ubuntu xenial

This is for advanced users.
The images use Ansible stable version (installed from official PyPI repo)   

## Build
```
docker build -f ubuntu/Dockerfile -t hugomrdias/ansible:ubuntu .
docker build -f debian/Dockerfile -t hugomrdias/ansible:debian .
```

## Running
```
docker run -v `pwd`:/tmp/"${PWD##*/}" -w /tmp/"${PWD##*/}" --rm -it hugomrdias/ansible
```

## Resources
https://www.dajobe.org/blog/2015/04/18/making-debian-docker-images-smaller/   
https://docs.docker.com/engine/tutorials/dockerimages/   



## License
MIT © [Hugo Dias](http://hugodias.me)

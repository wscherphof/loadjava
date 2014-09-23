docker build -t lj .
docker run --name lj lj true
docker run --privileged --rm --volumes-from lj wscherphof/oracle-12c /bin/bash -c "/lj/testlj"
docker rm -v lj
docker rmi lj

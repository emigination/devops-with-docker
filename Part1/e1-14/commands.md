Commands used to run the container:
```
docker build -f Dockerfile_back -t back .
docker build -f Dockerfile_front -t front .
docker run -p 8080:8080 back
docker run -p 5000:5000 front
```
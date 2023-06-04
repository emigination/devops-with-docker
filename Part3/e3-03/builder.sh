git clone git@github.com:$1 repo
sudo docker build -f repo/Dockerfile -t $2 .
sudo docker push $2
# 自己写着玩的，错了不负责 /抠鼻

# in root
sudo apt update && sudo apt install -y vim python3-pip curl git
echo "zlsnb!"

# install dependencies
curl -L https://get.daocloud.io/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# install docker
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun

# accelerator
echo "{
  "registry-mirrors": ["https://registry.docker-cn.com"]
}" > /etc/docker/daemon.json

# MAYBE need to configure your hosts to connect GitHub

# build
git clone -b 2.0 https://github.com/QingdaoU/OnlineJudgeDeploy.git 
cd OnlineJudgeDeploy
docker-compose up -d

# And you can go to have a Cappuccino
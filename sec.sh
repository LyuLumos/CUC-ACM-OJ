# wget -O- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

# reboot

NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node nvm install 8.12.0

npm config set registry https://registry.npm.taobao.org
npm install

# test
node -v
npm -v


NODE_ENV=development npm run build:dll
export TARGET=http://127.0.0.1
npm run dev

docker pull registry.cn-hangzhou.aliyuncs.com/onlinejudge/oj_backend
NODE_ENV=production npm run build:dll
npm run build
docker cp ./dist CONTAINERID:/app/

# Package the local image and upload it to Aliyun
# visit https://cr.console.aliyun.com/repository/ for detailed information
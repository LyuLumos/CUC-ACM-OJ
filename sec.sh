# wget -O- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

# reboot

NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node nvm install 8.12.0

npm config set registry https://registry.npm.taobao.org
npm install

# test
node -v
npm -v

# NODE_ENV=development npm run build:dll

# export TARGET=http://127.0.0.1
# npm run dev


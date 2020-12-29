# install nodejs
wget https://nodejs.org/dist/v8.12.0/node-v8.12.0-linux-x64.tar.xz
tar -xvf node-v8.12.0-linux-x64.tar.xz
sudo mv node-v8.12.0-linux-x64 /usr/local
sudo ln -s /usr/local/node-v8.12.0-linux-x64/bin/node /usr/local/bin/node 
sudo ln -s /usr/local/node-v8.12.0-linux-x64/bin/npm /usr/local/bin/npm

# secondary development
git clone https://github.com/QingdaoU/OnlineJudgeFE.git

cd OnlineJudgeFE

# blahblah


npm install

# ******************* Rerun ****************************

NODE_ENV=development npm run build:dll

export TARGET=127.0.0.1

npm run dev

# ******************* /Rerun ****************************
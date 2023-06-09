# https://github.com/nodesource/distributions#using-debian-as-root-3

curl -fsSL https://deb.nodesource.com/setup_16.x | bash - &&\
apt-get install -y nodejs

npm install -g pyret-npm

ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts

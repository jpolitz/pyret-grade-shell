# https://github.com/nodesource/distributions#using-debian-as-root-3

curl -fsSL https://deb.nodesource.com/setup_16.x | bash - &&\
apt-get install -y nodejs

# https://pptr.dev/troubleshooting#chrome-headless-doesnt-launch-on-unix
apt-get install -y \
  ca-certificates \
  fonts-liberation \
  libasound2 \
  libatk-bridge2.0-0 \
  libatk1.0-0 \
  libc6 \
  libcairo2 \
  libcups2 \
  libdbus-1-3 \
  libexpat1 \
  libfontconfig1 \
  libgbm1 \
  libgcc1 \
  libglib2.0-0 \
  libgtk-3-0 \
  libnspr4 \
  libnss3 \
  libpango-1.0-0 \
  libpangocairo-1.0-0 \
  libstdc++6 \
  libx11-6 \
  libx11-xcb1 \
  libxcb1 \
  libxcomposite1 \
  libxcursor1 \
  libxdamage1 \
  libxext6 \
  libxfixes3 \
  libxi6 \
  libxrandr2 \
  libxrender1 \
  libxss1 \
  libxtst6 \
  lsb-release \
  wget \
  xdg-utils

cd /autograder
git clone https://github.com/brownplt/code.pyret.org.git
pushd code.pyret.org
npm install
ln -s node_modules/pyret-lang pyret
cp .env.example .env
echo "GOOGLE_API_KEY=AIzaSyDJnGUiV4b06hCIHq_ftAGqEbnhLtK9phs" >> .env
echo "GOOGLE_APP_ID=267342163896" >> .env
touch src/web/js/beforePyret.js
npm run build
popd

npm install -g pyret-npm

ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts


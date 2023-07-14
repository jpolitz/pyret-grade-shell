if [ $# -ne 1 ];
    then echo "Provide the path to your Github ssh key as the first parameter"
fi

cp $1 id_rsa

git clone git@github.com:brownplt/code.pyret.org
pushd code.pyret.org
npm install
ln -s node_modules/pyret-lang pyret
cp .env.example .env
touch src/web/js/beforePyret.js
npm run build
popd

# NOTE(joe): Skipping node_modules here because we don't want all the modules
# from the machine that zips this stuff up; we will reinstall them with the
# right versions in setup.sh which runs on the Gradescope server.
zip -r pa.zip config setup.sh run_autograder id_rsa code.pyret.org -x "code.pyret.org/node_modules/*" "code.pyret.org/pyret/*"

#!/bin/sh

echo "Creating the Express App: $1"
express $1
cd $1

echo "Creating $1 on Heroku and setting up Git"
heroku create $1
git init
heroku git:remote -a $1
git add .
git commit -am "First commit. Adds a Express 4 skeleton app."

echo "Creating shell script to run $1 locally"
touch run_locally.sh
chmod +x run_locally.sh
echo "npm start" > run_locally.sh

echo "Creating README.md file"
touch README.md

touch .gitignore
echo "node_modules" > .gitignore
echo ".DS_Store" >> .gitignore
echo "*.log" >> .gitignore

git add .
git commit -am "Adds README and Git ignore files."
git push heroku master

echo "Opening $1"
heroku open

echo "Tailing $1 logs"
heroku logs --tail

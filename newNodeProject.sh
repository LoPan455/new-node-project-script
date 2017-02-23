#!/bin/sh
TEMPLATE_DIR=~/development/templates
printf "Please Enter the name of the folder you want: "
read FOLDERNAME
echo "Foldername variable set"
mkdir $FOLDERNAME
echo "Created new folder"
#add index.html, client.js, jquery.js, build server folders
#create a new folder called 'server'
mkdir $FOLDERNAME/server
#create a new folder called 'public'
mkdir $FOLDERNAME/server/public

cp $TEMPLATE_DIR/app.js $FOLDERNAME/server #puts app.js into your 'server' folder
echo "Copied app.js to the root of the server directory"
cp $TEMPLATE_DIR/client.js $FOLDERNAME/server/public/ #puts client.js in your 'server/public' folder
echo "Copied client.js into the folder"
cp $TEMPLATE_DIR/jquery.js $FOLDERNAME/server/public/ #copies Jquery into your 'server/public' folder
echo "Copied jquery into the folder"
cp $TEMPLATE_DIR/index.html $FOLDERNAME/server/public/ #copies your base index.html into your 'server/public' folder
echo "Copied index.html into the folder"
cp $TEMPLATE_DIR/.gitignore $FOLDERNAME #copies .gitignore into the root of the project folder so we don't copy your node modules to github.
echo "copied .gitignore file into the root of the project folder"

#####setup the server section#####

#creates the package.json and initializes the server
echo "building server"
cd $FOLDERNAME
npm init
#manually edit the package.json file to start with "node /server/app.js"
#installs the Express framework
npm install express body-parser --save #this will persist the package.json dependency key to ALWAYS bring in Express.js
#open in atom.
cd $FOLDERNAME
atom .

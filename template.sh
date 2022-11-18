#!/bin/bash

HTMLBOILER='<!DOCTYPE html>\n
<html lang="en">\n
  <head>\n\t
    <meta charset="UTF-8">\n\t
    <meta name="viewport" content="width=device-width, initial-scale=1.0">\n\t
    <meta http-equiv="X-UA-Compatible" content="ie=edge">\n\t
    <title>HTML 5 Boilerplate</title>\n\t
    <link rel="stylesheet" href="style.css">\n
  </head>\n
  <body>\n\t
        <script src="index.js"></script>\n
  </body>\n
</html>'

if [ ! -d "~/.code_templates" ]
then
    mkdir ~/.code_templates
    echo "templates directory created at $HOME/.code_templates"
    echo -e $HTMLBOILER > ~/.code_templates/template.html # HTML TEMPLATE HERE

fi

touch $1.$2

cp ~/.code_templates/template.$2 ./$1.$2

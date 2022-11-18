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

CSSBOILER="
:root {

}\n

* {

}\n

body {

}\n"

PYTHONBOILER="#!/usr/bin/env python3"

BASHBOILER="#!/bin/bash"

if [ ! -d ~/.code_templates ]
then
    # DIRECTORY CREATION
    mkdir ~/.code_templates
    echo "templates directory created at $HOME/.code_templates"
    # TEMPLATES CREATION
    echo -e "$HTMLBOILER" > ~/.code_templates/template.html # HTML TEMPLATE
    echo -e "$CSSBOILER" > ~/.code_templates/template.css # CSS TEMPLATE
    echo -e "$PYTHONBOILER" > ~/.code_templates/template.py # PYTHON TEMPLATE

fi

# GET FILENAME FROM USER INPUT AND SPLIT BY . INTO ARRAY
IFS="."
read -a FILENAMEARRAY <<< "$1"
# SAVE FILE EXTENSION TO VARIABLE
FILEEXTENSION="${FILENAMEARRAY[1]}"
IFS=" "


touch $1
cp ~/.code_templates/template.$FILEEXTENSION ./$1


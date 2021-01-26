#!/bin/bash

pandoc -i README.md -o index.html

git add .

git commit -m 'Auto'

git push

#!/bin/bash

pandoc -i README.md -o index.html

git add -u

git commit -m 'Auto'

git push
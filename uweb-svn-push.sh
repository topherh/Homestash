#!/bin/sh

notify-send 'UWeb Push Started'
svn --quiet --force export https://svn.cac.washington.edu/svn/uwplone/UWMarketing/uwmarketing.xdvtheme/trunk/ /home/cheiland/Documents/svnuweb-tmp/
rsync -aqz --exclude 'president.html' --exclude '.htgroup' --exclude '.htaccess' -e ssh /home/cheiland/Documents/svnuweb-tmp/ uweb@ovid:public_html/redesign/
notify-send 'UWeb Push Finished'

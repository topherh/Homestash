#!/bin/bash

#####
### Author cheiland
### Date 02 November 2012
#####

############ Variables ###########
SERVER="$1" ## cms vs cmsdev
FQDN=$SERVER'.u.washington.edu'
NAME="$2" ## CWD
TYPE='themes'
############ /Variables ##########

if [ ! -d .git ]
then
    echo "This must be run inside a git repository"
    exit;
fi

GIT="[core]\n"
GIT=$GIT"	repositoryformatversion = 0\n"
GIT=$GIT"	filemode = true\n"
GIT=$GIT"	bare = true\n"
GIT=$GIT"	sharedRepository = group\n"

if [ -z "$1" ]
then
    echo "Please Specify a Server Name"
    exit;
fi


if [ -z "$2" ]
then
    echo "Please Specify a Project Name"
    exit;
fi

echo -e "Theme or Plugin [t/p]: \c"
read tp_type

if [ $tp_type == 'p' ]; then
    TYPE='plugins'
fi

echo "Creating Project $NAME on $SERVER"

ssh $FQDN mkdir -p /data/marketing/git/$NAME.git/
ssh $FQDN git init --bare /data/marketing/git/$NAME.git/
ssh $FQDN cp /data/marketing/git/post-receive /data/marketing/git/$NAME.git/hooks/post-receive
## TODO TEST TEST TEST
ssh $FQDN sed -i -e "s/themes/$TYPE/g" /data/marketing/git/$NAME.git/hooks/post-receive
ssh $FQDN sed -i -e "s/REPLACEME/$NAME/g" /data/marketing/git/$NAME.git/hooks/post-receive
echo -e $GIT > tmp.fel
scp tmp.fel $FQDN:/data/marketing/git/$NAME.git/config
rm tmp.fel
ssh $FQDN chmod -R g+w /data/marketing/git/$NAME.git/

## Have to be in the actual repository
echo "Adding remote $SERVER"
git remote add $SERVER ssh://$FQDN/data/marketing/git/$NAME.git/
git push $SERVER master

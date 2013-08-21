GIT_LOG_SINCE=$1
GIT_REMOTE_NAME=$2

if [ -z $GIT_LOG_SINCE ]
then
    GIT_LOG_SINCE=24
fi

if [ -z $GIT_REMOTE_NAME ]
then
    GIT_REMOTE_NAME=origin
fi

echo "$(PROJECT=$(url=$(git config remote.${GIT_REMOTE_NAME}.url) && url=${url#*github.com?} && echo ${url%.git}) && echo "hash | title" && echo "-----|------" && git log --since=${GIT_LOG_SINCE}' hours ago' --author=$(git config user.email) --pretty="format:[%h](https://github.com/$PROJECT/commit/%h) | %s" | perl -nle "\$_ =~ s|#(\\d+)|[#\\1](https://github.com/${PROJECT}/pull/\\1)|g; print \$_")"

exit 0

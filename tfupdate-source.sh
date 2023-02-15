#!/bin/bash

for file in *; do
    if [ -f ${file} ] && grep -q gitlabssh.annalect.com ${file}; then
        echo $file
        perlex.sh "s#git::ssh://git\@gitlabssh.annalect.com:5000/devops/terraform_aws_modules.git//#git\@bitbucket.org:annalect/terraform_aws_modules//#" "${file}" -i
    fi
done

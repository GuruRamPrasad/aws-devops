#!/bin/bash
alias e=echo
mkdir apache-deployment
cd apache-deployment
echo "--->download artifact from aritfactory"
aws s3 cp s3://artifacts-devops-learn/static-1.tgz .
echo "--->extract the pkg"
tar -xvzf static-1.tgz
echo "--->deployment to apache"
cp index.html /var/www/html/


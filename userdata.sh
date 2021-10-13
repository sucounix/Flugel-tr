#!/bin/bash -v

sudo apt-get update -y
sleep 10

sudo apt-get install -y nginx > /tmp/nginx.log
sleep 5

sudo apt install python3-pip -y
sleep 5

sudo apt install python3-boto3 -y

sudo cat <<EOF > get-tag.py
import boto3
import sys
import os
import requests

os.environ['AWS_DEFAULT_REGION'] = 'us-east-2'
#os.environ['AWS_ACCESS_KEY_ID'] = 'AKIAUZUP4TP6NITKRHJY'
#os.environ['AWS_SECRET_ACCESS_KEY'] = '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'

sys.tracebacklimit = 0

response = requests.get('http://169.254.169.254/latest/meta-data/instance-id')
instance_id = response.text

client = boto3.client('ec2')
reservations = client.describe_instances(InstanceIds=[instance_id]).get("Reservations")
for reservation in reservations:
   for instance in reservation['Instances']:
#       print(instance["InstanceId"])
       print(instance["Tags"])
EOF
sleep 10

python3 get-tag.py > /var/www/html/index.html  






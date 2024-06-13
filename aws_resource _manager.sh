#!/bin/bash




################################################################
#Author: Sai Tharun
#Date: 13-06-2024
#Version: V1
#This script will collect the usage of AWS resources
###############################################################

#AWS S3
#AWS EC2
#AWS LAMBDA
#AWS IAM

set -x
#LIST S3 BUCKETS
echo "AWS S3"
aws s3 ls

#LIST EC2 INSTANCES
echo "AWS EC2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#LIST LAMBDA FUNCTIONS
echo "AWS LAMBDA"
aws lambda list-functions

#LIST IAM USERS
echo "AWS IAM"
aws iam list-users

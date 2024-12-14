#!/bin/bash

# Update and install Python and pip
sudo yum update -y
sudo yum install python3 -y
sudo yum install python3-pip -y

# Create virtual environment
python3 -m venv venv

# Activate virtual environment
source venv/bin/activate

# Install Apache Airflow
pip install apache-airflow

# Create Airflow admin user
airflow users create -u admin -f admin -l admin -r Admin -e airflow@gmail.com

# Initialize Airflow database
airflow db init

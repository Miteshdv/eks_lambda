#!/bin/bash
set -e

# Navigate to the src directory
cd ../lambda-function-app

# Install dependencies
pip install -r requirements.txt -t .

# Create the deployment package
7z a lambda-function-app.zip -tzip ../lambda-function-app/*

# Navigate back to the root directory
cd ..
#!/bin/bash
set -e

# Define the package directory
PACKAGE_DIR="package"

# Create a package directory
mkdir -p $PACKAGE_DIR

# Install dependencies in the package directory
pip install -r requirements.txt -t $PACKAGE_DIR

# Copy the lambda function code to the package directory
cp lambda_function.py $PACKAGE_DIR

# Navigate to the package directory
cd $PACKAGE_DIR

# Create the deployment package using 7z
7z a ../lambda-function-app.zip *

# Navigate back to the root directory
cd ..

# Clean up the package directory
rm -rf $PACKAGE_DIR
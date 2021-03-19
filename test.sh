#!/bin/bash

# Create/activate Python virtual environment
python3 -m venv venv
source venv/bin/activate

# Install pip requirements
pip3 install -r requirements.txt
pip3 install pytest pytest-cov

# Run pytest
python3 -m pytest --cov=application --junitxml=junit.xml --cov-report=xml

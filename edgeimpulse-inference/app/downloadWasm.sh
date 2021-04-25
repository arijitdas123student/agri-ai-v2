#!/bin/sh
#This script builds and downloads WASM classifier using Edge Impulse API
# API Key and Project ID are defined as environment variables in BalenaCloud

# Fill out and uncomment for local deployment
#EI_API_KEY=""
#EI_PROJECT_ID=""

# Build WASM model and retrieves JOB ID


# Retrieve WASM model
curl --request GET \
  --url "https://studio.edgeimpulse.com/v1/api/$EI_PROJECT_ID/deployment/download?type=wasm" \
  --header "accept: application/zip" \
  --header "x-api-key: $EI_API_KEY" --output wasm.zip && \
  unzip -o wasm.zip && rm wasm.zip

# default WASM classifier will be loaded if curl request fails
exit 0

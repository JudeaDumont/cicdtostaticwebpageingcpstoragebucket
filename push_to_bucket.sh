#!/usr/bin/env bash

FOLDER_PATH="site"
BUCKET="www.influencerwebsiteexample.com"
cd $FOLDER_PATH
## Now lets run the gsutil command for the storage
# Empty the bucket first
gsutil -m rm gs://$BUCKET/**
# Upload to your bucket with no cache
gsutil -m -h "Cache-Control:no-cache" cp -r ./ gs://$BUCKET/
# Make all the files public
gsutil -m acl set -R -a public-read gs://$BUCKET/
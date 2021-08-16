#!/bin/bash

cd ./nginx
sh ./build_upload_aliyun.sh
cd -
 
cd ./php
sh ./build_upload_aliyun.sh
cd -

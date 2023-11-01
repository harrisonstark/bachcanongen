#!/bin/bash

mkdir cocochorales_tiny_v1_zipped
cd cocochorales_tiny_v1_zipped

# download md5
wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/cocochorales_md5s.txt

# download main dataset
mkdir main_dataset
mkdir main_dataset/train
mkdir main_dataset/valid
mkdir main_dataset/test
for i in 1 2 3 25 27 51 73 74; do
  wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/main_dataset/train/"$i".tar.bz2 -P main_dataset/train
done
for i in 1 4; do
  wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/main_dataset/test/"$i".tar.bz2 -P main_dataset/test
done
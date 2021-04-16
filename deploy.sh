#!/bin/sh
docker build .
docker images > image_list.txt

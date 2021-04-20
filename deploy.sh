#!/bin/sh
docker build  -t acp3_sil_udm:latest .
docker images > image_list.txt

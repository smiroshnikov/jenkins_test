#!/bin/sh
docker build  -t acp3_sil_udm:2 .
docker images > image_list.txt

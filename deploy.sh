#!/bin/sh
docker build  -t ecu_ctc_sil_udm:1 .
docker images > image_list.txt

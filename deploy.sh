#!/bin/sh
docker build  -t ECU_CTC_SIL_UDM:1 .
docker images > image_list.txt

#!/bin/bash 

rm -f corpus/* && cp seed.png corpus/seed.png

./libpng -workers=1 -jobs=1 -close_fd_mask=3 -rss_limit_mb=3000 -print_final_stats=1 ./corpus 
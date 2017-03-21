#!/bin/sh  
ps -ef | grep fasthttp | grep -v grep | awk '{print $2}' | xargs -t -i kill -9 {} >/dev/null  
gcc   fasthttp.c -o fasthttp  
$(pwd)/fasthttp 


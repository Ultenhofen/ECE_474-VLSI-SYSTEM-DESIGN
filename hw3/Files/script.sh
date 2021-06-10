#!/bin/bash

echo Compiling glitch and glitchless

dc_shell-xg-t -f dv_script.txt

echo Compiled!

echo Beginning glitchy model

vsim -do glitchy.do -quiet -c -t 1ps

echo Done!

echo Beginning glitchless model

vsim -do glitchless.do -quiet -c -t 1ps

echo Done!
echo Script end

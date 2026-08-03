#!/bin/bash

set -e

echo "========== Compiling =========="

iverilog \
-g2012 \
-o ../results/aes_sim \
../rtl/*.v \
../tb/*.v

echo
echo "========== Running =========="

vvp ../results/aes_sim

echo
echo "Done."o

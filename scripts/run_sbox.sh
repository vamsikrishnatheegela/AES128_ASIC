#!/bin/bash

iverilog \
-o sbox_sim \
../rtl/sbox.v \
../tb/tb_sbox.v

vvp sbox_sim

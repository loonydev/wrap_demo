#!/bin/sh

rm -rf build; mkdir build && cd build
cmake .. && make $@
python3 setup.py build_ext -i

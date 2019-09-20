# Python Wrapper Demo

## About The Project
Simple demonstration how we can import pre-builded C/C++ library in Python

## Getting Started

### Prerequisites

For build sources you must install some tools.
```sh
pip3 install cython
sudo apt install cmake gcc
```
### Wrap with Cython
```sh
sh build.sh
python3 -c "import build.main as main;print(dir(main))"
```

### Wrap with Ctypesgen

Cloning [ctypesgen repository](https://github.com/davidjamesca/ctypesgen.git)

```sh
sh build.sh
cd build/lib/
python3 ~/ctypesgen/run.py -lmal ../include/*.h -o main_wrap.py
python3 -c "import main_wrap as main;print(dir(main))"
```

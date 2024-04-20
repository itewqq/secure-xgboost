#!/bin/bash

set -ex

# make libxgboost.so
source /opt/openenclave/share/openenclave/openenclaverc
rm -rf build/
mkdir build
cd build
cmake -DSIMULATE=OFF ..
make -j32

# makke python package
cd ~/secure-xgboost/python-package/
sudo python3 setup.py install

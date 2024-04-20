#!/bin/bash

set -ex

# sudo apt update
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com E5C7F0FA1C6C6C3C
sudo apt update
sudo apt -y --fix-broken install clang-8 libssl-dev gdb libsgx-enclave-common libsgx-quote-ex libprotobuf10 libsgx-dcap-ql libsgx-dcap-ql-dev az-dcap-client open-enclave
# apt --fix-broken install # if error occurs, run this
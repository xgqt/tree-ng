#!/bin/sh


cd ./src || exit 1

make -j"$(nproc)"
make dist

mv ./*.tgz ../

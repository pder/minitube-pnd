#!/bin/bash

cd minitube
qmake -spec $PNDSDK/../sdk_utils/qmake_linux-pandora-g++
make

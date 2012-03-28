#!/bin/bash

export HOME=$(pwd)
export PATH=$(pwd)/bin:$PATH
export LD_LIBRARY_PATH=$(pwd)/lib
export QT_PLUGIN_PATH=$(pwd)/plugins

minitube "$@"

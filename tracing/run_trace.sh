#!/usr/bin/bash

export CUDASHIM_OUTPUT_FORMAT=chrometrace|csv
export CUDA_INJECTION64_PATH=/path/to/kairos.cudashim/build/libcudashim.so
export LD_LIBRARY_PATH="/path/to/kairos.cudashim/build:$LD_LIBRARY_PATH"

../build/ErosionCase
# CUDA-Erosion-Case

This repo realizes CUDA erosion for 2D image, gives an example for CUDA kernel function optimization, support some metrics calculation api or commands.

## Dependencies

- NVIDIA toolkit and driver

- cmake (version >= 3.9)

## Usage

### Build

- build erosion case

    ```bash
    mkdir build
    cd build
    cmake ..
    make -j <N>
    ```

> You could add `SHOW_MEMORY` build option to show memory usage to check cuda kernel function memory usage.

### Run

- Simple run ErosionCase

    ```bash
    cd build
    ./ErosionCase
    ```

- Calculate occupancy through CUDA API

    Cancel note in function "ErosionTwoSteps" in srcs/gpu.cu and rebuild, it could print its theoretical value.

- Calculate occupancy through CUDA excel

    Cuda offical occupanecy calculator execel in `tool` folder, its default path: `/usr/local/cuda/tools`.

- Get kernel function register usage through CUDA API

    Cancel note in function "ErosionTwoStepsShared" in srcs/gpu.cu and rebuild, it could print value.

- Generate tracing file

    Execute `tracing` folder bash file.

- Generate profiling file through Nsight Compute Tool

    Execute `profiling` folder bash file, and it need root to execute.

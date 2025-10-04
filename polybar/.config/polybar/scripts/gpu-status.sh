#!/bin/bash

# Check which GPU is driving X (desktop)
GPU=$(glxinfo | grep "OpenGL renderer" | awk -F': ' '{print $2}')

# If NVIDIA is active
if [[ $GPU == *"NVIDIA"* ]]; then
    echo "󰍹 NVIDIA"
else
    echo "󰘚 AMD"
fi

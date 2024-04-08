#!/bin/bash

# Get the date in YYYYMMDD format
BUILD_DATE=$(date +%Y%m%d)

SOURCE_FILE="source.c"
OUTPUT_FILE="myprogram_${BUILD_DATE}"

gcc -o $OUTPUT_FILE $SOURCE_FILE

echo "Successfully built $OUTPUT_FILE"


ARCH_UNAME=$(uname -m)
ARCH_OS_RELEASE=""
ARCH_PROC_VERSION=""

# Attempt to get info from /etc/os-release (optional)
if [[ -f /etc/os-release ]]; then
  ARCH_OS_RELEASE=$(grep '^ID=.*' /etc/os-release | cut -d'=' -f2 | tr -d '"')
fi

# Attempt to get info from /proc/version (optional)
if [[ -f /proc/version ]]; then  
  ARCH_PROC_VERSION=$(grep 'machine' /proc/version | cut -d' ' -f2)
fi
#!/bin/bash
if grep -q microsoft-standard /proc/sys/kernel/osrelease; then
    export IS_WSL=2
    export WSL2_HOST_IP=$(ip route list default | cut -d' ' -f 3)
fi

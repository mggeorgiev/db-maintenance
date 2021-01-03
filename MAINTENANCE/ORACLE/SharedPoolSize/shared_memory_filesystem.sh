#!/bin/bash

#check
df -k /dev/shm

sudo mount -t tmpfs shmfs -o size=4096m /dev/shm

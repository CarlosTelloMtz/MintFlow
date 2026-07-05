#!/bin/bash

# ==========================================
# MintFlow
# Módulo: RAM
#
# Lee /proc/meminfo
# ==========================================

total=$(grep MemTotal /proc/meminfo | awk '{print $2}')
available=$(grep MemAvailable /proc/meminfo | awk '{print $2}')

used=$((total-available))

used_mb=$((used/1024))
total_mb=$((total/1024))

echo "${used_mb} MB / ${total_mb} MB"

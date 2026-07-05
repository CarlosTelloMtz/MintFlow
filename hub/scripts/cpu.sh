#!/bin/bash

# ==========================================
# MintFlow
# Módulo: CPU
#
# Calcula el porcentaje de uso de CPU
# utilizando /proc/stat.
#
# Autor: Carlos + ChatGPT
# ==========================================

read cpu user nice system idle iowait irq softirq steal guest guest_nice < /proc/stat

total1=$((user+nice+system+idle+iowait+irq+softirq+steal))
idle1=$((idle+iowait))

sleep 0.5

read cpu user nice system idle iowait irq softirq steal guest guest_nice < /proc/stat

total2=$((user+nice+system+idle+iowait+irq+softirq+steal))
idle2=$((idle+iowait))

total=$((total2-total1))
idle=$((idle2-idle1))

usage=$((100*(total-idle)/total))

echo "$usage"

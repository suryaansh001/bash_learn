#!/bin/bash

check_cpu() {
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    echo "CPU Usage: ${CPU_USAGE}%"
}

check_memory() {
    MEMORY_USAGE=$(free -m | awk '/Mem:/ { printf("%.2f"), $3/$2 * 100.0 }')
    echo "Memory Usage: ${MEMORY_USAGE}%"
}

check_disk() {
    DISK_USAGE=$(df -h / | awk 'NR==2 { print $5 }')
    echo "Disk Usage: ${DISK_USAGE}"
}

check_cpu
check_memory
check_disk


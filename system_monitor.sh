#!/bin/bash

# Define the report file
REPORT="system_report.txt"

# Clear the previous contents of the report file
> $REPORT

echo "===================================" >> $REPORT
echo "       System Monitoring Report      " >> $REPORT
echo "===================================" >> $REPORT
echo "" >> $REPORT

# Collect memory usage data
echo "Memory Usage:" >> $REPORT
free -h >> $REPORT
echo "" >> $REPORT

# Collect CPU usage data
echo "CPU Usage:" >> $REPORT
top -b -n1 | grep "Cpu(s)" >> $REPORT
echo "" >> $REPORT

# Collect disk usage data
echo "Disk Usage:" >> $REPORT
df -h >> $REPORT
echo "" >> $REPORT

# Collect network usage data
echo "Network Usage:" >> $REPORT
ifconfig | grep "RX packets" >> $REPORT
ifconfig | grep "TX packets" >> $REPORT
echo "" >> $REPORT

echo "===================================" >> $REPORT
echo "    Report Generated on: $(date)   " >> $REPORT
echo "===================================" >> $REPORT

# Convert the report to PDF
enscript $REPORT -o - | ps2pdf - "system_report.pdf"

echo "PDF report generated as system_report.pdf"


#!/bin/bash
#This script prints system info

print_hashes() {
  for i in {1..20}
  do
    echo -n "###"
  done
  echo ""
}

echo "Welcome to bash script."
print_hashes
echo "uptime is: $(uptime)"
print_hashes
echo "Memory usage is: $(free -m)"
print_hashes
echo "Disk usage is: $(df -h)"
print_hashes


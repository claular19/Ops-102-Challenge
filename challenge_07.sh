#!/bin/bash

# Creating echo messages declaring which hardware's part is being displayed.

echo "Displaying system info for CPU"

# running lshw commands to search hardware and filter to only showing product, vendor, etc.

sudo lshw -c cpu | grep -e 'product' -e 'vendor' -e 'physical id' -e 'bus info' -e 'width' 

echo "Displaying system info for RAM"

sudo lshw -c memory | grep -e 'description' -e 'physical id' -e 'size'

echo "Displaying system info for display adapter"

sudo lshw -c display | grep -e 'description' -e 'product' -e 'vendor' -e 'physical id' -e 'bus info' -e 'width' -e 'clock' -e 'capabilities' -e 'configuration' -e 'resources'

echo "Displaying system info for network adapter"

sudo lshw -c network | grep -e 'description' -e 'product' -e 'vendor' -e 'physical id' -e 'bus info' -e 'logical name' -e 'version' -e 'serial' -e 'size' -e 'capacity' -e 'width' -e 'clock' -e 'capabilities' -e 'configuration' -e 'resources'

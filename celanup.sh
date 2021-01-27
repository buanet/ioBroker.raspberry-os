#!/bin/bash

# cleanup for new build
echo "Cleaning the mess up..."
rm -R pi-gen
docker rm -v pigen_work

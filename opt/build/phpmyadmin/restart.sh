#!/bin/sh
echo "Stopping Container...."
./stop.sh
echo "Waiting..."
sleep 10
echo "Starting Container...."
./start.sh


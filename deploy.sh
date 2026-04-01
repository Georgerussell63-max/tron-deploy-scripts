#!/bin/bash
set -e

# Load config
export PRIVATE_KEY="d7495b9abd05be025749bb5e6d3c83aa45f4f0d948a0e2d96d9f99f8131a70e2"
export ADDRESS="TUL16qQxphAR8nEYVy6wdRadZobZmbP5fs"
export NETWORK="mainnet"
export RPC_URL="https://api.trongrid.io"

echo "Deploying TRON service..."
echo "Wallet: $ADDRESS"

# Install dependencies
pip3 install tronpy requests

# Start service
python3 service.py &
echo "Service started (PID: $!)"
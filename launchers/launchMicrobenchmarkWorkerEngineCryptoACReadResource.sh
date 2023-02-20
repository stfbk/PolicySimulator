#!/bin/sh

locust -f simulator/Engine.py \
    "microbenchmark/read_resource.json" \
    CryptoAC \
    --loglevel=INFO \
    --uniqueTransientResourceNames --uniqueRoleNames \
    --host=https://127.0.0.1:8443 \
    --csv=results/CryptoAC_AllWorkflows \
    --headless \
    --worker \
    --master-host=127.0.0.1 \
    --master-port=5557
    
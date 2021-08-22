#!/usr/bin/env bash
set -e

rm -r mesh-transformer-jax || true

git clone https://github.com/jacobfnl/mesh-transformer-jax
pip install -r mesh-transformer-jax/requirements.txt
pip install mesh-transformer-jax/

pushd mesh-transformer-jax || exit
screen -d -m python3 device_serve.py --config configs/6B_aw_slim.json
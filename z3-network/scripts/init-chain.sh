#!/bin/bash

# plain spec
./target/release/evm-template-node build-spec --disable-default-bootnode > plain-parachain-chainspec.json
# raw spec
./target/release/evm-template-node build-spec --chain z3-testnet-chainspec.json --disable-default-bootnode --raw > z3-testnet-raw-chainspec.json
# genesis
./target/release/evm-template-node export-genesis-state --chain z3-testnet-raw-chainspec.json > z3-testnet-genesis-state
# wasm
./target/release/evm-template-node export-genesis-wasm --chain z3-testnet-raw-chainspec.json > z3-testnet-genesis-wasm

#!/usr/bin/env bash

exec ./polkadot $1 --base-path /chaindata --rpc-methods Safe --ws-external --rpc-external --rpc-cors all

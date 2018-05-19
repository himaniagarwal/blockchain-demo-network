#!/bin/bash
geth --datadir node1 --port 30303 --nodiscover --networkid 123212 --rpcport 8545 --rpc --rpcaddr 'localhost' console 2>console.log

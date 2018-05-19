#!/bin/bash
geth --datadir node2 --port 30304 --nodiscover --networkid 123212 --rpcport 8546 --rpc --rpcaddr 'localhost' console 2>console.log

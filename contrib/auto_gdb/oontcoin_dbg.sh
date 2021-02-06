#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.oontcoincore/oontcoind.pid file instead
oontcoin_pid=$(<~/.oontcoincore/testnet3/oontcoind.pid)
sudo gdb -batch -ex "source debug.gdb" oontcoind ${oontcoin_pid}

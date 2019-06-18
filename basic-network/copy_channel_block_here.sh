#!/bin/bash
#
# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
# Exit on first error, print all commands.
set -ev

rm -rf ~/fabric-samples/basic-network/channel/mychannel.block
scp suz@10.133.253.41:~/fabric-samples/basic-network/channel/mychannel.block ~/fabric-samples/basic-network/channel
#!/bin/bash
#
# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#

# Exit on first error, print all commands.
set -ev

ssh-keygen -t rsa -b 4096 -C "suz@tradeshift.com"

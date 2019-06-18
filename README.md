[//]: # (SPDX-License-Identifier: CC-BY-4.0)

## Basic Samples 扩展

3个节点，3个org，每个org只有一个peer
A,B,C是三台不同的机器

chaincode 是 basic sample 中js的chaincode

git clone https://github.com/Kisun7/fabric-samples.git

git checkout mysample 

1. clean
    * A: sudo ./teardown.sh
    * B: sudo ./teardown.sh
    * C: sudo ./teardown.sh
2. setup
    * A: sudo ./start_org1.sh
    * B: ./copy_channel_block_here.sh   &  sudo ./start_org2.sh
    * C: ./copy_channel_block_here.sh   &  sudo ./start_org2.sh
3. init
    * A: sudo sh instantiate_chaincode.sh
    * A: cd ~/fabric-samples/commercial-paper/organization/magnetocorp/application/
    * A: node addToWallet.js
    * A: node issue.js 
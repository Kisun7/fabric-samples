#!/bin/bash
#
# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#

# Exit on first error, print all commands.
set -ev

#install
docker exec -e "CORE_PEER_LOCALMSPID=Org1MSP" -e "CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/msp/users/Admin@org1.example.com/msp" peer0.org1.example.com peer chaincode install -n papercontract -v 2 -p /etc/hyperledger/contract_hackathon -l node
#docker exec -e "CORE_PEER_LOCALMSPID=Org2MSP" -e "CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/msp/users/Admin@org2.example.com/msp" peer0.org2.example.com peer chaincode install -n papercontract -v 2 -p /etc/hyperledger/contract_hackathon -l node
#docker exec -e "CORE_PEER_LOCALMSPID=Org3MSP" -e "CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/msp/users/Admin@org3.example.com/msp" peer0.org3.example.com peer chaincode install -n papercontract -v 2 -p /etc/hyperledger/contract_hackathon -l node
#upgrade
docker exec -e "CORE_PEER_LOCALMSPID=Org1MSP" -e "CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/msp/users/Admin@org1.example.com/msp" peer0.org1.example.com peer chaincode upgrade -n papercontract -v 2 -l node -c '{"Args":["org.papernet.commercialpaper:instantiate"]}' -C mychannel -P "OR('Org1MSP.member','Org2MSP.member')"

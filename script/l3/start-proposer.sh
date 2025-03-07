#!/bin/sh

set -eou pipefail

if [ "$ENABLE_PROPOSER" == "true" ]; then
    taiko-client proposer \
      --l1.ws ${L2_ENDPOINT_WS} \
      --l2.http http://l3_execution_engine:8545 \
      --taikoL1 ${TAIKO_L1_ADDRESS} \
      --taikoL2 ${TAIKO_L2_ADDRESS} \
      --l1.proposerPrivKey ${L2_PROPOSER_PRIVATE_KEY} \
      --l2.suggestedFeeRecipient ${L3_SUGGESTED_FEE_RECIPIENT} \
      --minimalBlockGasLimit "5000000"
else
    sleep infinity
fi

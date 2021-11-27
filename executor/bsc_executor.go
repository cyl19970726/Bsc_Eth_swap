package executor

import (
	"github.com/ethereum/go-ethereum/accounts/abi"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/ethclient"

	contractabi "Bsc_Eth_swap/abi"
)

type BscExecutor struct {

	Chain string

	SwapAgentInst contractabi.E
	SwapAgentAddr common.Address
	SwapAgentAbi     abi.ABI
	Client           *ethclient.Client

}




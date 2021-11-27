// Code generated - DO NOT EDIT.
// This file is a generated binding and any manual changes will be lost.

package abi

import (
	"math/big"
	"strings"

	ethereum "github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/accounts/abi"
	"github.com/ethereum/go-ethereum/accounts/abi/bind"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/ethereum/go-ethereum/event"
)

// Reference imports to suppress errors if they are not otherwise used.
var (
	_ = big.NewInt
	_ = strings.NewReader
	_ = ethereum.NotFound
	_ = bind.Bind
	_ = common.Big1
	_ = types.BloomLookup
	_ = event.NewSubscription
)

// BSCSwapAgentErc721ABI is the input ABI used to generate the binding from.
const BSCSwapAgentErc721ABI = "[{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"bep721Addr\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"bytes32\",\"name\":\"ethTxHash\",\"type\":\"bytes32\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"toAddress\",\"type\":\"address\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"string\",\"name\":\"tokenUri\",\"type\":\"string\"}],\"name\":\"ERC721_SwapFilled\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"bytes32\",\"name\":\"ethRegisterTxHash\",\"type\":\"bytes32\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"bep721Addr\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"erc721Addr\",\"type\":\"address\"},{\"indexed\":false,\"internalType\":\"string\",\"name\":\"name\",\"type\":\"string\"},{\"indexed\":false,\"internalType\":\"string\",\"name\":\"symbol\",\"type\":\"string\"},{\"indexed\":false,\"internalType\":\"bool\",\"name\":\"mintable\",\"type\":\"bool\"}],\"name\":\"ERC721_SwapPairCreated\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"bep721Addr\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"erc721Addr\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"fromAddr\",\"type\":\"address\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"feeAmount\",\"type\":\"uint256\"}],\"name\":\"ERC721_SwapStarted\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"previousOwner\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"newOwner\",\"type\":\"address\"}],\"name\":\"OwnershipTransferred\",\"type\":\"event\"},{\"inputs\":[],\"name\":\"bep721Implementation\",\"outputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"bep721ProxyAdmin\",\"outputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"bytes32\",\"name\":\"ethTxHash\",\"type\":\"bytes32\"},{\"internalType\":\"address\",\"name\":\"erc721Addr\",\"type\":\"address\"},{\"internalType\":\"string\",\"name\":\"name\",\"type\":\"string\"},{\"internalType\":\"string\",\"name\":\"symbol\",\"type\":\"string\"},{\"internalType\":\"bool\",\"name\":\"mintable\",\"type\":\"bool\"}],\"name\":\"createSwapPair\",\"outputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"bytes32\",\"name\":\"ethTxHash\",\"type\":\"bytes32\"},{\"internalType\":\"address\",\"name\":\"erc20Addr\",\"type\":\"address\"},{\"internalType\":\"address\",\"name\":\"toAddress\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"},{\"internalType\":\"string\",\"name\":\"tokenUri\",\"type\":\"string\"}],\"name\":\"fillETH2BSCSwap\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"bytes32\",\"name\":\"\",\"type\":\"bytes32\"}],\"name\":\"filledETHTx\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"address\",\"name\":\"bep721Impl\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"fee\",\"type\":\"uint256\"},{\"internalType\":\"address\",\"name\":\"bep721ProxyAdminAddr\",\"type\":\"address\"}],\"name\":\"initialize\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"address\",\"name\":\"operator\",\"type\":\"address\"},{\"internalType\":\"address\",\"name\":\"from\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"},{\"internalType\":\"bytes\",\"name\":\"data\",\"type\":\"bytes\"}],\"name\":\"onERC721Received\",\"outputs\":[{\"internalType\":\"bytes4\",\"name\":\"\",\"type\":\"bytes4\"}],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"owner\",\"outputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"renounceOwnership\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fee\",\"type\":\"uint256\"}],\"name\":\"setSwapFee\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"address\",\"name\":\"bep721Addr\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"}],\"name\":\"swapBSC2ETH\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"stateMutability\":\"payable\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"swapFee\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"name\":\"swapMappingBSC2ETH\",\"outputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"name\":\"swapMappingETH2BSC\",\"outputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"address\",\"name\":\"newOwner\",\"type\":\"address\"}],\"name\":\"transferOwnership\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"}]"

// BSCSwapAgentErc721 is an auto generated Go binding around an Ethereum contract.
type BSCSwapAgentErc721 struct {
	BSCSwapAgentErc721Caller     // Read-only binding to the contract
	BSCSwapAgentErc721Transactor // Write-only binding to the contract
	BSCSwapAgentErc721Filterer   // Log filterer for contract events
}

// BSCSwapAgentErc721Caller is an auto generated read-only Go binding around an Ethereum contract.
type BSCSwapAgentErc721Caller struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// BSCSwapAgentErc721Transactor is an auto generated write-only Go binding around an Ethereum contract.
type BSCSwapAgentErc721Transactor struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// BSCSwapAgentErc721Filterer is an auto generated log filtering Go binding around an Ethereum contract events.
type BSCSwapAgentErc721Filterer struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// BSCSwapAgentErc721Session is an auto generated Go binding around an Ethereum contract,
// with pre-set call and transact options.
type BSCSwapAgentErc721Session struct {
	Contract     *BSCSwapAgentErc721 // Generic contract binding to set the session for
	CallOpts     bind.CallOpts       // Call options to use throughout this session
	TransactOpts bind.TransactOpts   // Transaction auth options to use throughout this session
}

// BSCSwapAgentErc721CallerSession is an auto generated read-only Go binding around an Ethereum contract,
// with pre-set call options.
type BSCSwapAgentErc721CallerSession struct {
	Contract *BSCSwapAgentErc721Caller // Generic contract caller binding to set the session for
	CallOpts bind.CallOpts             // Call options to use throughout this session
}

// BSCSwapAgentErc721TransactorSession is an auto generated write-only Go binding around an Ethereum contract,
// with pre-set transact options.
type BSCSwapAgentErc721TransactorSession struct {
	Contract     *BSCSwapAgentErc721Transactor // Generic contract transactor binding to set the session for
	TransactOpts bind.TransactOpts             // Transaction auth options to use throughout this session
}

// BSCSwapAgentErc721Raw is an auto generated low-level Go binding around an Ethereum contract.
type BSCSwapAgentErc721Raw struct {
	Contract *BSCSwapAgentErc721 // Generic contract binding to access the raw methods on
}

// BSCSwapAgentErc721CallerRaw is an auto generated low-level read-only Go binding around an Ethereum contract.
type BSCSwapAgentErc721CallerRaw struct {
	Contract *BSCSwapAgentErc721Caller // Generic read-only contract binding to access the raw methods on
}

// BSCSwapAgentErc721TransactorRaw is an auto generated low-level write-only Go binding around an Ethereum contract.
type BSCSwapAgentErc721TransactorRaw struct {
	Contract *BSCSwapAgentErc721Transactor // Generic write-only contract binding to access the raw methods on
}

// NewBSCSwapAgentErc721 creates a new instance of BSCSwapAgentErc721, bound to a specific deployed contract.
func NewBSCSwapAgentErc721(address common.Address, backend bind.ContractBackend) (*BSCSwapAgentErc721, error) {
	contract, err := bindBSCSwapAgentErc721(address, backend, backend, backend)
	if err != nil {
		return nil, err
	}
	return &BSCSwapAgentErc721{BSCSwapAgentErc721Caller: BSCSwapAgentErc721Caller{contract: contract}, BSCSwapAgentErc721Transactor: BSCSwapAgentErc721Transactor{contract: contract}, BSCSwapAgentErc721Filterer: BSCSwapAgentErc721Filterer{contract: contract}}, nil
}

// NewBSCSwapAgentErc721Caller creates a new read-only instance of BSCSwapAgentErc721, bound to a specific deployed contract.
func NewBSCSwapAgentErc721Caller(address common.Address, caller bind.ContractCaller) (*BSCSwapAgentErc721Caller, error) {
	contract, err := bindBSCSwapAgentErc721(address, caller, nil, nil)
	if err != nil {
		return nil, err
	}
	return &BSCSwapAgentErc721Caller{contract: contract}, nil
}

// NewBSCSwapAgentErc721Transactor creates a new write-only instance of BSCSwapAgentErc721, bound to a specific deployed contract.
func NewBSCSwapAgentErc721Transactor(address common.Address, transactor bind.ContractTransactor) (*BSCSwapAgentErc721Transactor, error) {
	contract, err := bindBSCSwapAgentErc721(address, nil, transactor, nil)
	if err != nil {
		return nil, err
	}
	return &BSCSwapAgentErc721Transactor{contract: contract}, nil
}

// NewBSCSwapAgentErc721Filterer creates a new log filterer instance of BSCSwapAgentErc721, bound to a specific deployed contract.
func NewBSCSwapAgentErc721Filterer(address common.Address, filterer bind.ContractFilterer) (*BSCSwapAgentErc721Filterer, error) {
	contract, err := bindBSCSwapAgentErc721(address, nil, nil, filterer)
	if err != nil {
		return nil, err
	}
	return &BSCSwapAgentErc721Filterer{contract: contract}, nil
}

// bindBSCSwapAgentErc721 binds a generic wrapper to an already deployed contract.
func bindBSCSwapAgentErc721(address common.Address, caller bind.ContractCaller, transactor bind.ContractTransactor, filterer bind.ContractFilterer) (*bind.BoundContract, error) {
	parsed, err := abi.JSON(strings.NewReader(BSCSwapAgentErc721ABI))
	if err != nil {
		return nil, err
	}
	return bind.NewBoundContract(address, parsed, caller, transactor, filterer), nil
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Raw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _BSCSwapAgentErc721.Contract.BSCSwapAgentErc721Caller.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Raw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.BSCSwapAgentErc721Transactor.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Raw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.BSCSwapAgentErc721Transactor.contract.Transact(opts, method, params...)
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721CallerRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _BSCSwapAgentErc721.Contract.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721TransactorRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721TransactorRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.contract.Transact(opts, method, params...)
}

// Bep721Implementation is a free data retrieval call binding the contract method 0x43377c7a.
//
// Solidity: function bep721Implementation() view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Caller) Bep721Implementation(opts *bind.CallOpts) (common.Address, error) {
	var out []interface{}
	err := _BSCSwapAgentErc721.contract.Call(opts, &out, "bep721Implementation")

	if err != nil {
		return *new(common.Address), err
	}

	out0 := *abi.ConvertType(out[0], new(common.Address)).(*common.Address)

	return out0, err

}

// Bep721Implementation is a free data retrieval call binding the contract method 0x43377c7a.
//
// Solidity: function bep721Implementation() view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) Bep721Implementation() (common.Address, error) {
	return _BSCSwapAgentErc721.Contract.Bep721Implementation(&_BSCSwapAgentErc721.CallOpts)
}

// Bep721Implementation is a free data retrieval call binding the contract method 0x43377c7a.
//
// Solidity: function bep721Implementation() view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721CallerSession) Bep721Implementation() (common.Address, error) {
	return _BSCSwapAgentErc721.Contract.Bep721Implementation(&_BSCSwapAgentErc721.CallOpts)
}

// Bep721ProxyAdmin is a free data retrieval call binding the contract method 0xa8fd3dc3.
//
// Solidity: function bep721ProxyAdmin() view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Caller) Bep721ProxyAdmin(opts *bind.CallOpts) (common.Address, error) {
	var out []interface{}
	err := _BSCSwapAgentErc721.contract.Call(opts, &out, "bep721ProxyAdmin")

	if err != nil {
		return *new(common.Address), err
	}

	out0 := *abi.ConvertType(out[0], new(common.Address)).(*common.Address)

	return out0, err

}

// Bep721ProxyAdmin is a free data retrieval call binding the contract method 0xa8fd3dc3.
//
// Solidity: function bep721ProxyAdmin() view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) Bep721ProxyAdmin() (common.Address, error) {
	return _BSCSwapAgentErc721.Contract.Bep721ProxyAdmin(&_BSCSwapAgentErc721.CallOpts)
}

// Bep721ProxyAdmin is a free data retrieval call binding the contract method 0xa8fd3dc3.
//
// Solidity: function bep721ProxyAdmin() view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721CallerSession) Bep721ProxyAdmin() (common.Address, error) {
	return _BSCSwapAgentErc721.Contract.Bep721ProxyAdmin(&_BSCSwapAgentErc721.CallOpts)
}

// FilledETHTx is a free data retrieval call binding the contract method 0x4e2dc7f1.
//
// Solidity: function filledETHTx(bytes32 ) view returns(bool)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Caller) FilledETHTx(opts *bind.CallOpts, arg0 [32]byte) (bool, error) {
	var out []interface{}
	err := _BSCSwapAgentErc721.contract.Call(opts, &out, "filledETHTx", arg0)

	if err != nil {
		return *new(bool), err
	}

	out0 := *abi.ConvertType(out[0], new(bool)).(*bool)

	return out0, err

}

// FilledETHTx is a free data retrieval call binding the contract method 0x4e2dc7f1.
//
// Solidity: function filledETHTx(bytes32 ) view returns(bool)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) FilledETHTx(arg0 [32]byte) (bool, error) {
	return _BSCSwapAgentErc721.Contract.FilledETHTx(&_BSCSwapAgentErc721.CallOpts, arg0)
}

// FilledETHTx is a free data retrieval call binding the contract method 0x4e2dc7f1.
//
// Solidity: function filledETHTx(bytes32 ) view returns(bool)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721CallerSession) FilledETHTx(arg0 [32]byte) (bool, error) {
	return _BSCSwapAgentErc721.Contract.FilledETHTx(&_BSCSwapAgentErc721.CallOpts, arg0)
}

// Owner is a free data retrieval call binding the contract method 0x8da5cb5b.
//
// Solidity: function owner() view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Caller) Owner(opts *bind.CallOpts) (common.Address, error) {
	var out []interface{}
	err := _BSCSwapAgentErc721.contract.Call(opts, &out, "owner")

	if err != nil {
		return *new(common.Address), err
	}

	out0 := *abi.ConvertType(out[0], new(common.Address)).(*common.Address)

	return out0, err

}

// Owner is a free data retrieval call binding the contract method 0x8da5cb5b.
//
// Solidity: function owner() view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) Owner() (common.Address, error) {
	return _BSCSwapAgentErc721.Contract.Owner(&_BSCSwapAgentErc721.CallOpts)
}

// Owner is a free data retrieval call binding the contract method 0x8da5cb5b.
//
// Solidity: function owner() view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721CallerSession) Owner() (common.Address, error) {
	return _BSCSwapAgentErc721.Contract.Owner(&_BSCSwapAgentErc721.CallOpts)
}

// SwapFee is a free data retrieval call binding the contract method 0x54cf2aeb.
//
// Solidity: function swapFee() view returns(uint256)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Caller) SwapFee(opts *bind.CallOpts) (*big.Int, error) {
	var out []interface{}
	err := _BSCSwapAgentErc721.contract.Call(opts, &out, "swapFee")

	if err != nil {
		return *new(*big.Int), err
	}

	out0 := *abi.ConvertType(out[0], new(*big.Int)).(**big.Int)

	return out0, err

}

// SwapFee is a free data retrieval call binding the contract method 0x54cf2aeb.
//
// Solidity: function swapFee() view returns(uint256)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) SwapFee() (*big.Int, error) {
	return _BSCSwapAgentErc721.Contract.SwapFee(&_BSCSwapAgentErc721.CallOpts)
}

// SwapFee is a free data retrieval call binding the contract method 0x54cf2aeb.
//
// Solidity: function swapFee() view returns(uint256)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721CallerSession) SwapFee() (*big.Int, error) {
	return _BSCSwapAgentErc721.Contract.SwapFee(&_BSCSwapAgentErc721.CallOpts)
}

// SwapMappingBSC2ETH is a free data retrieval call binding the contract method 0xbe0ace69.
//
// Solidity: function swapMappingBSC2ETH(address ) view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Caller) SwapMappingBSC2ETH(opts *bind.CallOpts, arg0 common.Address) (common.Address, error) {
	var out []interface{}
	err := _BSCSwapAgentErc721.contract.Call(opts, &out, "swapMappingBSC2ETH", arg0)

	if err != nil {
		return *new(common.Address), err
	}

	out0 := *abi.ConvertType(out[0], new(common.Address)).(*common.Address)

	return out0, err

}

// SwapMappingBSC2ETH is a free data retrieval call binding the contract method 0xbe0ace69.
//
// Solidity: function swapMappingBSC2ETH(address ) view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) SwapMappingBSC2ETH(arg0 common.Address) (common.Address, error) {
	return _BSCSwapAgentErc721.Contract.SwapMappingBSC2ETH(&_BSCSwapAgentErc721.CallOpts, arg0)
}

// SwapMappingBSC2ETH is a free data retrieval call binding the contract method 0xbe0ace69.
//
// Solidity: function swapMappingBSC2ETH(address ) view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721CallerSession) SwapMappingBSC2ETH(arg0 common.Address) (common.Address, error) {
	return _BSCSwapAgentErc721.Contract.SwapMappingBSC2ETH(&_BSCSwapAgentErc721.CallOpts, arg0)
}

// SwapMappingETH2BSC is a free data retrieval call binding the contract method 0x60b810f1.
//
// Solidity: function swapMappingETH2BSC(address ) view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Caller) SwapMappingETH2BSC(opts *bind.CallOpts, arg0 common.Address) (common.Address, error) {
	var out []interface{}
	err := _BSCSwapAgentErc721.contract.Call(opts, &out, "swapMappingETH2BSC", arg0)

	if err != nil {
		return *new(common.Address), err
	}

	out0 := *abi.ConvertType(out[0], new(common.Address)).(*common.Address)

	return out0, err

}

// SwapMappingETH2BSC is a free data retrieval call binding the contract method 0x60b810f1.
//
// Solidity: function swapMappingETH2BSC(address ) view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) SwapMappingETH2BSC(arg0 common.Address) (common.Address, error) {
	return _BSCSwapAgentErc721.Contract.SwapMappingETH2BSC(&_BSCSwapAgentErc721.CallOpts, arg0)
}

// SwapMappingETH2BSC is a free data retrieval call binding the contract method 0x60b810f1.
//
// Solidity: function swapMappingETH2BSC(address ) view returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721CallerSession) SwapMappingETH2BSC(arg0 common.Address) (common.Address, error) {
	return _BSCSwapAgentErc721.Contract.SwapMappingETH2BSC(&_BSCSwapAgentErc721.CallOpts, arg0)
}

// CreateSwapPair is a paid mutator transaction binding the contract method 0xe54264dd.
//
// Solidity: function createSwapPair(bytes32 ethTxHash, address erc721Addr, string name, string symbol, bool mintable) returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Transactor) CreateSwapPair(opts *bind.TransactOpts, ethTxHash [32]byte, erc721Addr common.Address, name string, symbol string, mintable bool) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.contract.Transact(opts, "createSwapPair", ethTxHash, erc721Addr, name, symbol, mintable)
}

// CreateSwapPair is a paid mutator transaction binding the contract method 0xe54264dd.
//
// Solidity: function createSwapPair(bytes32 ethTxHash, address erc721Addr, string name, string symbol, bool mintable) returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) CreateSwapPair(ethTxHash [32]byte, erc721Addr common.Address, name string, symbol string, mintable bool) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.CreateSwapPair(&_BSCSwapAgentErc721.TransactOpts, ethTxHash, erc721Addr, name, symbol, mintable)
}

// CreateSwapPair is a paid mutator transaction binding the contract method 0xe54264dd.
//
// Solidity: function createSwapPair(bytes32 ethTxHash, address erc721Addr, string name, string symbol, bool mintable) returns(address)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721TransactorSession) CreateSwapPair(ethTxHash [32]byte, erc721Addr common.Address, name string, symbol string, mintable bool) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.CreateSwapPair(&_BSCSwapAgentErc721.TransactOpts, ethTxHash, erc721Addr, name, symbol, mintable)
}

// FillETH2BSCSwap is a paid mutator transaction binding the contract method 0x67136acc.
//
// Solidity: function fillETH2BSCSwap(bytes32 ethTxHash, address erc20Addr, address toAddress, uint256 tokenId, string tokenUri) returns(bool)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Transactor) FillETH2BSCSwap(opts *bind.TransactOpts, ethTxHash [32]byte, erc20Addr common.Address, toAddress common.Address, tokenId *big.Int, tokenUri string) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.contract.Transact(opts, "fillETH2BSCSwap", ethTxHash, erc20Addr, toAddress, tokenId, tokenUri)
}

// FillETH2BSCSwap is a paid mutator transaction binding the contract method 0x67136acc.
//
// Solidity: function fillETH2BSCSwap(bytes32 ethTxHash, address erc20Addr, address toAddress, uint256 tokenId, string tokenUri) returns(bool)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) FillETH2BSCSwap(ethTxHash [32]byte, erc20Addr common.Address, toAddress common.Address, tokenId *big.Int, tokenUri string) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.FillETH2BSCSwap(&_BSCSwapAgentErc721.TransactOpts, ethTxHash, erc20Addr, toAddress, tokenId, tokenUri)
}

// FillETH2BSCSwap is a paid mutator transaction binding the contract method 0x67136acc.
//
// Solidity: function fillETH2BSCSwap(bytes32 ethTxHash, address erc20Addr, address toAddress, uint256 tokenId, string tokenUri) returns(bool)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721TransactorSession) FillETH2BSCSwap(ethTxHash [32]byte, erc20Addr common.Address, toAddress common.Address, tokenId *big.Int, tokenUri string) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.FillETH2BSCSwap(&_BSCSwapAgentErc721.TransactOpts, ethTxHash, erc20Addr, toAddress, tokenId, tokenUri)
}

// Initialize is a paid mutator transaction binding the contract method 0xc350a1b5.
//
// Solidity: function initialize(address bep721Impl, uint256 fee, address bep721ProxyAdminAddr) returns()
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Transactor) Initialize(opts *bind.TransactOpts, bep721Impl common.Address, fee *big.Int, bep721ProxyAdminAddr common.Address) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.contract.Transact(opts, "initialize", bep721Impl, fee, bep721ProxyAdminAddr)
}

// Initialize is a paid mutator transaction binding the contract method 0xc350a1b5.
//
// Solidity: function initialize(address bep721Impl, uint256 fee, address bep721ProxyAdminAddr) returns()
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) Initialize(bep721Impl common.Address, fee *big.Int, bep721ProxyAdminAddr common.Address) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.Initialize(&_BSCSwapAgentErc721.TransactOpts, bep721Impl, fee, bep721ProxyAdminAddr)
}

// Initialize is a paid mutator transaction binding the contract method 0xc350a1b5.
//
// Solidity: function initialize(address bep721Impl, uint256 fee, address bep721ProxyAdminAddr) returns()
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721TransactorSession) Initialize(bep721Impl common.Address, fee *big.Int, bep721ProxyAdminAddr common.Address) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.Initialize(&_BSCSwapAgentErc721.TransactOpts, bep721Impl, fee, bep721ProxyAdminAddr)
}

// OnERC721Received is a paid mutator transaction binding the contract method 0x150b7a02.
//
// Solidity: function onERC721Received(address operator, address from, uint256 tokenId, bytes data) returns(bytes4)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Transactor) OnERC721Received(opts *bind.TransactOpts, operator common.Address, from common.Address, tokenId *big.Int, data []byte) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.contract.Transact(opts, "onERC721Received", operator, from, tokenId, data)
}

// OnERC721Received is a paid mutator transaction binding the contract method 0x150b7a02.
//
// Solidity: function onERC721Received(address operator, address from, uint256 tokenId, bytes data) returns(bytes4)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) OnERC721Received(operator common.Address, from common.Address, tokenId *big.Int, data []byte) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.OnERC721Received(&_BSCSwapAgentErc721.TransactOpts, operator, from, tokenId, data)
}

// OnERC721Received is a paid mutator transaction binding the contract method 0x150b7a02.
//
// Solidity: function onERC721Received(address operator, address from, uint256 tokenId, bytes data) returns(bytes4)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721TransactorSession) OnERC721Received(operator common.Address, from common.Address, tokenId *big.Int, data []byte) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.OnERC721Received(&_BSCSwapAgentErc721.TransactOpts, operator, from, tokenId, data)
}

// RenounceOwnership is a paid mutator transaction binding the contract method 0x715018a6.
//
// Solidity: function renounceOwnership() returns()
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Transactor) RenounceOwnership(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.contract.Transact(opts, "renounceOwnership")
}

// RenounceOwnership is a paid mutator transaction binding the contract method 0x715018a6.
//
// Solidity: function renounceOwnership() returns()
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) RenounceOwnership() (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.RenounceOwnership(&_BSCSwapAgentErc721.TransactOpts)
}

// RenounceOwnership is a paid mutator transaction binding the contract method 0x715018a6.
//
// Solidity: function renounceOwnership() returns()
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721TransactorSession) RenounceOwnership() (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.RenounceOwnership(&_BSCSwapAgentErc721.TransactOpts)
}

// SetSwapFee is a paid mutator transaction binding the contract method 0x34e19907.
//
// Solidity: function setSwapFee(uint256 fee) returns()
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Transactor) SetSwapFee(opts *bind.TransactOpts, fee *big.Int) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.contract.Transact(opts, "setSwapFee", fee)
}

// SetSwapFee is a paid mutator transaction binding the contract method 0x34e19907.
//
// Solidity: function setSwapFee(uint256 fee) returns()
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) SetSwapFee(fee *big.Int) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.SetSwapFee(&_BSCSwapAgentErc721.TransactOpts, fee)
}

// SetSwapFee is a paid mutator transaction binding the contract method 0x34e19907.
//
// Solidity: function setSwapFee(uint256 fee) returns()
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721TransactorSession) SetSwapFee(fee *big.Int) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.SetSwapFee(&_BSCSwapAgentErc721.TransactOpts, fee)
}

// SwapBSC2ETH is a paid mutator transaction binding the contract method 0x1ba3b150.
//
// Solidity: function swapBSC2ETH(address bep721Addr, uint256 tokenId) payable returns(bool)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Transactor) SwapBSC2ETH(opts *bind.TransactOpts, bep721Addr common.Address, tokenId *big.Int) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.contract.Transact(opts, "swapBSC2ETH", bep721Addr, tokenId)
}

// SwapBSC2ETH is a paid mutator transaction binding the contract method 0x1ba3b150.
//
// Solidity: function swapBSC2ETH(address bep721Addr, uint256 tokenId) payable returns(bool)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) SwapBSC2ETH(bep721Addr common.Address, tokenId *big.Int) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.SwapBSC2ETH(&_BSCSwapAgentErc721.TransactOpts, bep721Addr, tokenId)
}

// SwapBSC2ETH is a paid mutator transaction binding the contract method 0x1ba3b150.
//
// Solidity: function swapBSC2ETH(address bep721Addr, uint256 tokenId) payable returns(bool)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721TransactorSession) SwapBSC2ETH(bep721Addr common.Address, tokenId *big.Int) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.SwapBSC2ETH(&_BSCSwapAgentErc721.TransactOpts, bep721Addr, tokenId)
}

// TransferOwnership is a paid mutator transaction binding the contract method 0xf2fde38b.
//
// Solidity: function transferOwnership(address newOwner) returns()
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Transactor) TransferOwnership(opts *bind.TransactOpts, newOwner common.Address) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.contract.Transact(opts, "transferOwnership", newOwner)
}

// TransferOwnership is a paid mutator transaction binding the contract method 0xf2fde38b.
//
// Solidity: function transferOwnership(address newOwner) returns()
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Session) TransferOwnership(newOwner common.Address) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.TransferOwnership(&_BSCSwapAgentErc721.TransactOpts, newOwner)
}

// TransferOwnership is a paid mutator transaction binding the contract method 0xf2fde38b.
//
// Solidity: function transferOwnership(address newOwner) returns()
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721TransactorSession) TransferOwnership(newOwner common.Address) (*types.Transaction, error) {
	return _BSCSwapAgentErc721.Contract.TransferOwnership(&_BSCSwapAgentErc721.TransactOpts, newOwner)
}

// BSCSwapAgentErc721ERC721SwapFilledIterator is returned from FilterERC721SwapFilled and is used to iterate over the raw logs and unpacked data for ERC721SwapFilled events raised by the BSCSwapAgentErc721 contract.
type BSCSwapAgentErc721ERC721SwapFilledIterator struct {
	Event *BSCSwapAgentErc721ERC721SwapFilled // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *BSCSwapAgentErc721ERC721SwapFilledIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(BSCSwapAgentErc721ERC721SwapFilled)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(BSCSwapAgentErc721ERC721SwapFilled)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *BSCSwapAgentErc721ERC721SwapFilledIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *BSCSwapAgentErc721ERC721SwapFilledIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// BSCSwapAgentErc721ERC721SwapFilled represents a ERC721SwapFilled event raised by the BSCSwapAgentErc721 contract.
type BSCSwapAgentErc721ERC721SwapFilled struct {
	Bep721Addr common.Address
	EthTxHash  [32]byte
	ToAddress  common.Address
	TokenId    *big.Int
	TokenUri   string
	Raw        types.Log // Blockchain specific contextual infos
}

// FilterERC721SwapFilled is a free log retrieval operation binding the contract event 0x0019730ce80c628be0ed164ef692ad0ec5fd5eaec1d6fdcb95ca9a5e91c9b371.
//
// Solidity: event ERC721_SwapFilled(address indexed bep721Addr, bytes32 indexed ethTxHash, address indexed toAddress, uint256 tokenId, string tokenUri)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Filterer) FilterERC721SwapFilled(opts *bind.FilterOpts, bep721Addr []common.Address, ethTxHash [][32]byte, toAddress []common.Address) (*BSCSwapAgentErc721ERC721SwapFilledIterator, error) {

	var bep721AddrRule []interface{}
	for _, bep721AddrItem := range bep721Addr {
		bep721AddrRule = append(bep721AddrRule, bep721AddrItem)
	}
	var ethTxHashRule []interface{}
	for _, ethTxHashItem := range ethTxHash {
		ethTxHashRule = append(ethTxHashRule, ethTxHashItem)
	}
	var toAddressRule []interface{}
	for _, toAddressItem := range toAddress {
		toAddressRule = append(toAddressRule, toAddressItem)
	}

	logs, sub, err := _BSCSwapAgentErc721.contract.FilterLogs(opts, "ERC721_SwapFilled", bep721AddrRule, ethTxHashRule, toAddressRule)
	if err != nil {
		return nil, err
	}
	return &BSCSwapAgentErc721ERC721SwapFilledIterator{contract: _BSCSwapAgentErc721.contract, event: "ERC721_SwapFilled", logs: logs, sub: sub}, nil
}

// WatchERC721SwapFilled is a free log subscription operation binding the contract event 0x0019730ce80c628be0ed164ef692ad0ec5fd5eaec1d6fdcb95ca9a5e91c9b371.
//
// Solidity: event ERC721_SwapFilled(address indexed bep721Addr, bytes32 indexed ethTxHash, address indexed toAddress, uint256 tokenId, string tokenUri)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Filterer) WatchERC721SwapFilled(opts *bind.WatchOpts, sink chan<- *BSCSwapAgentErc721ERC721SwapFilled, bep721Addr []common.Address, ethTxHash [][32]byte, toAddress []common.Address) (event.Subscription, error) {

	var bep721AddrRule []interface{}
	for _, bep721AddrItem := range bep721Addr {
		bep721AddrRule = append(bep721AddrRule, bep721AddrItem)
	}
	var ethTxHashRule []interface{}
	for _, ethTxHashItem := range ethTxHash {
		ethTxHashRule = append(ethTxHashRule, ethTxHashItem)
	}
	var toAddressRule []interface{}
	for _, toAddressItem := range toAddress {
		toAddressRule = append(toAddressRule, toAddressItem)
	}

	logs, sub, err := _BSCSwapAgentErc721.contract.WatchLogs(opts, "ERC721_SwapFilled", bep721AddrRule, ethTxHashRule, toAddressRule)
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(BSCSwapAgentErc721ERC721SwapFilled)
				if err := _BSCSwapAgentErc721.contract.UnpackLog(event, "ERC721_SwapFilled", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseERC721SwapFilled is a log parse operation binding the contract event 0x0019730ce80c628be0ed164ef692ad0ec5fd5eaec1d6fdcb95ca9a5e91c9b371.
//
// Solidity: event ERC721_SwapFilled(address indexed bep721Addr, bytes32 indexed ethTxHash, address indexed toAddress, uint256 tokenId, string tokenUri)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Filterer) ParseERC721SwapFilled(log types.Log) (*BSCSwapAgentErc721ERC721SwapFilled, error) {
	event := new(BSCSwapAgentErc721ERC721SwapFilled)
	if err := _BSCSwapAgentErc721.contract.UnpackLog(event, "ERC721_SwapFilled", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// BSCSwapAgentErc721ERC721SwapPairCreatedIterator is returned from FilterERC721SwapPairCreated and is used to iterate over the raw logs and unpacked data for ERC721SwapPairCreated events raised by the BSCSwapAgentErc721 contract.
type BSCSwapAgentErc721ERC721SwapPairCreatedIterator struct {
	Event *BSCSwapAgentErc721ERC721SwapPairCreated // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *BSCSwapAgentErc721ERC721SwapPairCreatedIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(BSCSwapAgentErc721ERC721SwapPairCreated)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(BSCSwapAgentErc721ERC721SwapPairCreated)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *BSCSwapAgentErc721ERC721SwapPairCreatedIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *BSCSwapAgentErc721ERC721SwapPairCreatedIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// BSCSwapAgentErc721ERC721SwapPairCreated represents a ERC721SwapPairCreated event raised by the BSCSwapAgentErc721 contract.
type BSCSwapAgentErc721ERC721SwapPairCreated struct {
	EthRegisterTxHash [32]byte
	Bep721Addr        common.Address
	Erc721Addr        common.Address
	Name              string
	Symbol            string
	Mintable          bool
	Raw               types.Log // Blockchain specific contextual infos
}

// FilterERC721SwapPairCreated is a free log retrieval operation binding the contract event 0xc17fcc8e6487cb116a67be9ecb70be0551b581a44fa8e3dddf315ccdb03820ef.
//
// Solidity: event ERC721_SwapPairCreated(bytes32 indexed ethRegisterTxHash, address indexed bep721Addr, address indexed erc721Addr, string name, string symbol, bool mintable)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Filterer) FilterERC721SwapPairCreated(opts *bind.FilterOpts, ethRegisterTxHash [][32]byte, bep721Addr []common.Address, erc721Addr []common.Address) (*BSCSwapAgentErc721ERC721SwapPairCreatedIterator, error) {

	var ethRegisterTxHashRule []interface{}
	for _, ethRegisterTxHashItem := range ethRegisterTxHash {
		ethRegisterTxHashRule = append(ethRegisterTxHashRule, ethRegisterTxHashItem)
	}
	var bep721AddrRule []interface{}
	for _, bep721AddrItem := range bep721Addr {
		bep721AddrRule = append(bep721AddrRule, bep721AddrItem)
	}
	var erc721AddrRule []interface{}
	for _, erc721AddrItem := range erc721Addr {
		erc721AddrRule = append(erc721AddrRule, erc721AddrItem)
	}

	logs, sub, err := _BSCSwapAgentErc721.contract.FilterLogs(opts, "ERC721_SwapPairCreated", ethRegisterTxHashRule, bep721AddrRule, erc721AddrRule)
	if err != nil {
		return nil, err
	}
	return &BSCSwapAgentErc721ERC721SwapPairCreatedIterator{contract: _BSCSwapAgentErc721.contract, event: "ERC721_SwapPairCreated", logs: logs, sub: sub}, nil
}

// WatchERC721SwapPairCreated is a free log subscription operation binding the contract event 0xc17fcc8e6487cb116a67be9ecb70be0551b581a44fa8e3dddf315ccdb03820ef.
//
// Solidity: event ERC721_SwapPairCreated(bytes32 indexed ethRegisterTxHash, address indexed bep721Addr, address indexed erc721Addr, string name, string symbol, bool mintable)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Filterer) WatchERC721SwapPairCreated(opts *bind.WatchOpts, sink chan<- *BSCSwapAgentErc721ERC721SwapPairCreated, ethRegisterTxHash [][32]byte, bep721Addr []common.Address, erc721Addr []common.Address) (event.Subscription, error) {

	var ethRegisterTxHashRule []interface{}
	for _, ethRegisterTxHashItem := range ethRegisterTxHash {
		ethRegisterTxHashRule = append(ethRegisterTxHashRule, ethRegisterTxHashItem)
	}
	var bep721AddrRule []interface{}
	for _, bep721AddrItem := range bep721Addr {
		bep721AddrRule = append(bep721AddrRule, bep721AddrItem)
	}
	var erc721AddrRule []interface{}
	for _, erc721AddrItem := range erc721Addr {
		erc721AddrRule = append(erc721AddrRule, erc721AddrItem)
	}

	logs, sub, err := _BSCSwapAgentErc721.contract.WatchLogs(opts, "ERC721_SwapPairCreated", ethRegisterTxHashRule, bep721AddrRule, erc721AddrRule)
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(BSCSwapAgentErc721ERC721SwapPairCreated)
				if err := _BSCSwapAgentErc721.contract.UnpackLog(event, "ERC721_SwapPairCreated", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseERC721SwapPairCreated is a log parse operation binding the contract event 0xc17fcc8e6487cb116a67be9ecb70be0551b581a44fa8e3dddf315ccdb03820ef.
//
// Solidity: event ERC721_SwapPairCreated(bytes32 indexed ethRegisterTxHash, address indexed bep721Addr, address indexed erc721Addr, string name, string symbol, bool mintable)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Filterer) ParseERC721SwapPairCreated(log types.Log) (*BSCSwapAgentErc721ERC721SwapPairCreated, error) {
	event := new(BSCSwapAgentErc721ERC721SwapPairCreated)
	if err := _BSCSwapAgentErc721.contract.UnpackLog(event, "ERC721_SwapPairCreated", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// BSCSwapAgentErc721ERC721SwapStartedIterator is returned from FilterERC721SwapStarted and is used to iterate over the raw logs and unpacked data for ERC721SwapStarted events raised by the BSCSwapAgentErc721 contract.
type BSCSwapAgentErc721ERC721SwapStartedIterator struct {
	Event *BSCSwapAgentErc721ERC721SwapStarted // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *BSCSwapAgentErc721ERC721SwapStartedIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(BSCSwapAgentErc721ERC721SwapStarted)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(BSCSwapAgentErc721ERC721SwapStarted)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *BSCSwapAgentErc721ERC721SwapStartedIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *BSCSwapAgentErc721ERC721SwapStartedIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// BSCSwapAgentErc721ERC721SwapStarted represents a ERC721SwapStarted event raised by the BSCSwapAgentErc721 contract.
type BSCSwapAgentErc721ERC721SwapStarted struct {
	Bep721Addr common.Address
	Erc721Addr common.Address
	FromAddr   common.Address
	TokenId    *big.Int
	FeeAmount  *big.Int
	Raw        types.Log // Blockchain specific contextual infos
}

// FilterERC721SwapStarted is a free log retrieval operation binding the contract event 0x22bf63ea322f873eccd664444d4d056187e8660fdd6d917a2f492fc072e5abb2.
//
// Solidity: event ERC721_SwapStarted(address indexed bep721Addr, address indexed erc721Addr, address indexed fromAddr, uint256 tokenId, uint256 feeAmount)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Filterer) FilterERC721SwapStarted(opts *bind.FilterOpts, bep721Addr []common.Address, erc721Addr []common.Address, fromAddr []common.Address) (*BSCSwapAgentErc721ERC721SwapStartedIterator, error) {

	var bep721AddrRule []interface{}
	for _, bep721AddrItem := range bep721Addr {
		bep721AddrRule = append(bep721AddrRule, bep721AddrItem)
	}
	var erc721AddrRule []interface{}
	for _, erc721AddrItem := range erc721Addr {
		erc721AddrRule = append(erc721AddrRule, erc721AddrItem)
	}
	var fromAddrRule []interface{}
	for _, fromAddrItem := range fromAddr {
		fromAddrRule = append(fromAddrRule, fromAddrItem)
	}

	logs, sub, err := _BSCSwapAgentErc721.contract.FilterLogs(opts, "ERC721_SwapStarted", bep721AddrRule, erc721AddrRule, fromAddrRule)
	if err != nil {
		return nil, err
	}
	return &BSCSwapAgentErc721ERC721SwapStartedIterator{contract: _BSCSwapAgentErc721.contract, event: "ERC721_SwapStarted", logs: logs, sub: sub}, nil
}

// WatchERC721SwapStarted is a free log subscription operation binding the contract event 0x22bf63ea322f873eccd664444d4d056187e8660fdd6d917a2f492fc072e5abb2.
//
// Solidity: event ERC721_SwapStarted(address indexed bep721Addr, address indexed erc721Addr, address indexed fromAddr, uint256 tokenId, uint256 feeAmount)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Filterer) WatchERC721SwapStarted(opts *bind.WatchOpts, sink chan<- *BSCSwapAgentErc721ERC721SwapStarted, bep721Addr []common.Address, erc721Addr []common.Address, fromAddr []common.Address) (event.Subscription, error) {

	var bep721AddrRule []interface{}
	for _, bep721AddrItem := range bep721Addr {
		bep721AddrRule = append(bep721AddrRule, bep721AddrItem)
	}
	var erc721AddrRule []interface{}
	for _, erc721AddrItem := range erc721Addr {
		erc721AddrRule = append(erc721AddrRule, erc721AddrItem)
	}
	var fromAddrRule []interface{}
	for _, fromAddrItem := range fromAddr {
		fromAddrRule = append(fromAddrRule, fromAddrItem)
	}

	logs, sub, err := _BSCSwapAgentErc721.contract.WatchLogs(opts, "ERC721_SwapStarted", bep721AddrRule, erc721AddrRule, fromAddrRule)
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(BSCSwapAgentErc721ERC721SwapStarted)
				if err := _BSCSwapAgentErc721.contract.UnpackLog(event, "ERC721_SwapStarted", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseERC721SwapStarted is a log parse operation binding the contract event 0x22bf63ea322f873eccd664444d4d056187e8660fdd6d917a2f492fc072e5abb2.
//
// Solidity: event ERC721_SwapStarted(address indexed bep721Addr, address indexed erc721Addr, address indexed fromAddr, uint256 tokenId, uint256 feeAmount)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Filterer) ParseERC721SwapStarted(log types.Log) (*BSCSwapAgentErc721ERC721SwapStarted, error) {
	event := new(BSCSwapAgentErc721ERC721SwapStarted)
	if err := _BSCSwapAgentErc721.contract.UnpackLog(event, "ERC721_SwapStarted", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// BSCSwapAgentErc721OwnershipTransferredIterator is returned from FilterOwnershipTransferred and is used to iterate over the raw logs and unpacked data for OwnershipTransferred events raised by the BSCSwapAgentErc721 contract.
type BSCSwapAgentErc721OwnershipTransferredIterator struct {
	Event *BSCSwapAgentErc721OwnershipTransferred // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *BSCSwapAgentErc721OwnershipTransferredIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(BSCSwapAgentErc721OwnershipTransferred)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(BSCSwapAgentErc721OwnershipTransferred)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *BSCSwapAgentErc721OwnershipTransferredIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *BSCSwapAgentErc721OwnershipTransferredIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// BSCSwapAgentErc721OwnershipTransferred represents a OwnershipTransferred event raised by the BSCSwapAgentErc721 contract.
type BSCSwapAgentErc721OwnershipTransferred struct {
	PreviousOwner common.Address
	NewOwner      common.Address
	Raw           types.Log // Blockchain specific contextual infos
}

// FilterOwnershipTransferred is a free log retrieval operation binding the contract event 0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0.
//
// Solidity: event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Filterer) FilterOwnershipTransferred(opts *bind.FilterOpts, previousOwner []common.Address, newOwner []common.Address) (*BSCSwapAgentErc721OwnershipTransferredIterator, error) {

	var previousOwnerRule []interface{}
	for _, previousOwnerItem := range previousOwner {
		previousOwnerRule = append(previousOwnerRule, previousOwnerItem)
	}
	var newOwnerRule []interface{}
	for _, newOwnerItem := range newOwner {
		newOwnerRule = append(newOwnerRule, newOwnerItem)
	}

	logs, sub, err := _BSCSwapAgentErc721.contract.FilterLogs(opts, "OwnershipTransferred", previousOwnerRule, newOwnerRule)
	if err != nil {
		return nil, err
	}
	return &BSCSwapAgentErc721OwnershipTransferredIterator{contract: _BSCSwapAgentErc721.contract, event: "OwnershipTransferred", logs: logs, sub: sub}, nil
}

// WatchOwnershipTransferred is a free log subscription operation binding the contract event 0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0.
//
// Solidity: event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Filterer) WatchOwnershipTransferred(opts *bind.WatchOpts, sink chan<- *BSCSwapAgentErc721OwnershipTransferred, previousOwner []common.Address, newOwner []common.Address) (event.Subscription, error) {

	var previousOwnerRule []interface{}
	for _, previousOwnerItem := range previousOwner {
		previousOwnerRule = append(previousOwnerRule, previousOwnerItem)
	}
	var newOwnerRule []interface{}
	for _, newOwnerItem := range newOwner {
		newOwnerRule = append(newOwnerRule, newOwnerItem)
	}

	logs, sub, err := _BSCSwapAgentErc721.contract.WatchLogs(opts, "OwnershipTransferred", previousOwnerRule, newOwnerRule)
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(BSCSwapAgentErc721OwnershipTransferred)
				if err := _BSCSwapAgentErc721.contract.UnpackLog(event, "OwnershipTransferred", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseOwnershipTransferred is a log parse operation binding the contract event 0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0.
//
// Solidity: event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
func (_BSCSwapAgentErc721 *BSCSwapAgentErc721Filterer) ParseOwnershipTransferred(log types.Log) (*BSCSwapAgentErc721OwnershipTransferred, error) {
	event := new(BSCSwapAgentErc721OwnershipTransferred)
	if err := _BSCSwapAgentErc721.contract.UnpackLog(event, "OwnershipTransferred", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

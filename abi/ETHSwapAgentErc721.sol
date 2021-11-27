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

// ETHSwapAgentErc721ABI is the input ABI used to generate the binding from.
const ETHSwapAgentErc721ABI = "[{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"erc721Addr\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"bytes32\",\"name\":\"bscTxHash\",\"type\":\"bytes32\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"toAddress\",\"type\":\"address\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"}],\"name\":\"ERC721SwapFilled\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"sponsor\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"erc721Addr\",\"type\":\"address\"},{\"indexed\":false,\"internalType\":\"string\",\"name\":\"name\",\"type\":\"string\"},{\"indexed\":false,\"internalType\":\"string\",\"name\":\"symbol\",\"type\":\"string\"}],\"name\":\"ERC721SwapPairRegister\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"erc721Addr\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"fromAddr\",\"type\":\"address\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"string\",\"name\":\"tokenUri\",\"type\":\"string\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"feeAmount\",\"type\":\"uint256\"}],\"name\":\"ERC721SwapStarted\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"previousOwner\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"newOwner\",\"type\":\"address\"}],\"name\":\"OwnershipTransferred\",\"type\":\"event\"},{\"inputs\":[{\"internalType\":\"bytes32\",\"name\":\"bscTxHash\",\"type\":\"bytes32\"},{\"internalType\":\"address\",\"name\":\"erc721Addr\",\"type\":\"address\"},{\"internalType\":\"address\",\"name\":\"toAddress\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"}],\"name\":\"fillBSC2ETHSwap\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"bytes32\",\"name\":\"\",\"type\":\"bytes32\"}],\"name\":\"filledBSCTx\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fee\",\"type\":\"uint256\"}],\"name\":\"initialize\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"address\",\"name\":\"operator\",\"type\":\"address\"},{\"internalType\":\"address\",\"name\":\"from\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"},{\"internalType\":\"bytes\",\"name\":\"data\",\"type\":\"bytes\"}],\"name\":\"onERC721Received\",\"outputs\":[{\"internalType\":\"bytes4\",\"name\":\"\",\"type\":\"bytes4\"}],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"owner\",\"outputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"address\",\"name\":\"erc721Addr\",\"type\":\"address\"}],\"name\":\"registerSwapPair_to_BSC\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"name\":\"registeredERC721\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"renounceOwnership\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"address\",\"name\":\"erc721Addr\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"}],\"name\":\"swapETH2BSC\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"stateMutability\":\"payable\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"swapFee\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"address\",\"name\":\"newOwner\",\"type\":\"address\"}],\"name\":\"transferOwnership\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"}]"

// ETHSwapAgentErc721 is an auto generated Go binding around an Ethereum contract.
type ETHSwapAgentErc721 struct {
	ETHSwapAgentErc721Caller     // Read-only binding to the contract
	ETHSwapAgentErc721Transactor // Write-only binding to the contract
	ETHSwapAgentErc721Filterer   // Log filterer for contract events
}

// ETHSwapAgentErc721Caller is an auto generated read-only Go binding around an Ethereum contract.
type ETHSwapAgentErc721Caller struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// ETHSwapAgentErc721Transactor is an auto generated write-only Go binding around an Ethereum contract.
type ETHSwapAgentErc721Transactor struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// ETHSwapAgentErc721Filterer is an auto generated log filtering Go binding around an Ethereum contract events.
type ETHSwapAgentErc721Filterer struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// ETHSwapAgentErc721Session is an auto generated Go binding around an Ethereum contract,
// with pre-set call and transact options.
type ETHSwapAgentErc721Session struct {
	Contract     *ETHSwapAgentErc721 // Generic contract binding to set the session for
	CallOpts     bind.CallOpts       // Call options to use throughout this session
	TransactOpts bind.TransactOpts   // Transaction auth options to use throughout this session
}

// ETHSwapAgentErc721CallerSession is an auto generated read-only Go binding around an Ethereum contract,
// with pre-set call options.
type ETHSwapAgentErc721CallerSession struct {
	Contract *ETHSwapAgentErc721Caller // Generic contract caller binding to set the session for
	CallOpts bind.CallOpts             // Call options to use throughout this session
}

// ETHSwapAgentErc721TransactorSession is an auto generated write-only Go binding around an Ethereum contract,
// with pre-set transact options.
type ETHSwapAgentErc721TransactorSession struct {
	Contract     *ETHSwapAgentErc721Transactor // Generic contract transactor binding to set the session for
	TransactOpts bind.TransactOpts             // Transaction auth options to use throughout this session
}

// ETHSwapAgentErc721Raw is an auto generated low-level Go binding around an Ethereum contract.
type ETHSwapAgentErc721Raw struct {
	Contract *ETHSwapAgentErc721 // Generic contract binding to access the raw methods on
}

// ETHSwapAgentErc721CallerRaw is an auto generated low-level read-only Go binding around an Ethereum contract.
type ETHSwapAgentErc721CallerRaw struct {
	Contract *ETHSwapAgentErc721Caller // Generic read-only contract binding to access the raw methods on
}

// ETHSwapAgentErc721TransactorRaw is an auto generated low-level write-only Go binding around an Ethereum contract.
type ETHSwapAgentErc721TransactorRaw struct {
	Contract *ETHSwapAgentErc721Transactor // Generic write-only contract binding to access the raw methods on
}

// NewETHSwapAgentErc721 creates a new instance of ETHSwapAgentErc721, bound to a specific deployed contract.
func NewETHSwapAgentErc721(address common.Address, backend bind.ContractBackend) (*ETHSwapAgentErc721, error) {
	contract, err := bindETHSwapAgentErc721(address, backend, backend, backend)
	if err != nil {
		return nil, err
	}
	return &ETHSwapAgentErc721{ETHSwapAgentErc721Caller: ETHSwapAgentErc721Caller{contract: contract}, ETHSwapAgentErc721Transactor: ETHSwapAgentErc721Transactor{contract: contract}, ETHSwapAgentErc721Filterer: ETHSwapAgentErc721Filterer{contract: contract}}, nil
}

// NewETHSwapAgentErc721Caller creates a new read-only instance of ETHSwapAgentErc721, bound to a specific deployed contract.
func NewETHSwapAgentErc721Caller(address common.Address, caller bind.ContractCaller) (*ETHSwapAgentErc721Caller, error) {
	contract, err := bindETHSwapAgentErc721(address, caller, nil, nil)
	if err != nil {
		return nil, err
	}
	return &ETHSwapAgentErc721Caller{contract: contract}, nil
}

// NewETHSwapAgentErc721Transactor creates a new write-only instance of ETHSwapAgentErc721, bound to a specific deployed contract.
func NewETHSwapAgentErc721Transactor(address common.Address, transactor bind.ContractTransactor) (*ETHSwapAgentErc721Transactor, error) {
	contract, err := bindETHSwapAgentErc721(address, nil, transactor, nil)
	if err != nil {
		return nil, err
	}
	return &ETHSwapAgentErc721Transactor{contract: contract}, nil
}

// NewETHSwapAgentErc721Filterer creates a new log filterer instance of ETHSwapAgentErc721, bound to a specific deployed contract.
func NewETHSwapAgentErc721Filterer(address common.Address, filterer bind.ContractFilterer) (*ETHSwapAgentErc721Filterer, error) {
	contract, err := bindETHSwapAgentErc721(address, nil, nil, filterer)
	if err != nil {
		return nil, err
	}
	return &ETHSwapAgentErc721Filterer{contract: contract}, nil
}

// bindETHSwapAgentErc721 binds a generic wrapper to an already deployed contract.
func bindETHSwapAgentErc721(address common.Address, caller bind.ContractCaller, transactor bind.ContractTransactor, filterer bind.ContractFilterer) (*bind.BoundContract, error) {
	parsed, err := abi.JSON(strings.NewReader(ETHSwapAgentErc721ABI))
	if err != nil {
		return nil, err
	}
	return bind.NewBoundContract(address, parsed, caller, transactor, filterer), nil
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Raw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _ETHSwapAgentErc721.Contract.ETHSwapAgentErc721Caller.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Raw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.ETHSwapAgentErc721Transactor.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Raw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.ETHSwapAgentErc721Transactor.contract.Transact(opts, method, params...)
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721CallerRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _ETHSwapAgentErc721.Contract.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721TransactorRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721TransactorRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.contract.Transact(opts, method, params...)
}

// FilledBSCTx is a free data retrieval call binding the contract method 0x50877c77.
//
// Solidity: function filledBSCTx(bytes32 ) view returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Caller) FilledBSCTx(opts *bind.CallOpts, arg0 [32]byte) (bool, error) {
	var out []interface{}
	err := _ETHSwapAgentErc721.contract.Call(opts, &out, "filledBSCTx", arg0)

	if err != nil {
		return *new(bool), err
	}

	out0 := *abi.ConvertType(out[0], new(bool)).(*bool)

	return out0, err

}

// FilledBSCTx is a free data retrieval call binding the contract method 0x50877c77.
//
// Solidity: function filledBSCTx(bytes32 ) view returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Session) FilledBSCTx(arg0 [32]byte) (bool, error) {
	return _ETHSwapAgentErc721.Contract.FilledBSCTx(&_ETHSwapAgentErc721.CallOpts, arg0)
}

// FilledBSCTx is a free data retrieval call binding the contract method 0x50877c77.
//
// Solidity: function filledBSCTx(bytes32 ) view returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721CallerSession) FilledBSCTx(arg0 [32]byte) (bool, error) {
	return _ETHSwapAgentErc721.Contract.FilledBSCTx(&_ETHSwapAgentErc721.CallOpts, arg0)
}

// Owner is a free data retrieval call binding the contract method 0x8da5cb5b.
//
// Solidity: function owner() view returns(address)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Caller) Owner(opts *bind.CallOpts) (common.Address, error) {
	var out []interface{}
	err := _ETHSwapAgentErc721.contract.Call(opts, &out, "owner")

	if err != nil {
		return *new(common.Address), err
	}

	out0 := *abi.ConvertType(out[0], new(common.Address)).(*common.Address)

	return out0, err

}

// Owner is a free data retrieval call binding the contract method 0x8da5cb5b.
//
// Solidity: function owner() view returns(address)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Session) Owner() (common.Address, error) {
	return _ETHSwapAgentErc721.Contract.Owner(&_ETHSwapAgentErc721.CallOpts)
}

// Owner is a free data retrieval call binding the contract method 0x8da5cb5b.
//
// Solidity: function owner() view returns(address)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721CallerSession) Owner() (common.Address, error) {
	return _ETHSwapAgentErc721.Contract.Owner(&_ETHSwapAgentErc721.CallOpts)
}

// RegisteredERC721 is a free data retrieval call binding the contract method 0x398acb24.
//
// Solidity: function registeredERC721(address ) view returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Caller) RegisteredERC721(opts *bind.CallOpts, arg0 common.Address) (bool, error) {
	var out []interface{}
	err := _ETHSwapAgentErc721.contract.Call(opts, &out, "registeredERC721", arg0)

	if err != nil {
		return *new(bool), err
	}

	out0 := *abi.ConvertType(out[0], new(bool)).(*bool)

	return out0, err

}

// RegisteredERC721 is a free data retrieval call binding the contract method 0x398acb24.
//
// Solidity: function registeredERC721(address ) view returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Session) RegisteredERC721(arg0 common.Address) (bool, error) {
	return _ETHSwapAgentErc721.Contract.RegisteredERC721(&_ETHSwapAgentErc721.CallOpts, arg0)
}

// RegisteredERC721 is a free data retrieval call binding the contract method 0x398acb24.
//
// Solidity: function registeredERC721(address ) view returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721CallerSession) RegisteredERC721(arg0 common.Address) (bool, error) {
	return _ETHSwapAgentErc721.Contract.RegisteredERC721(&_ETHSwapAgentErc721.CallOpts, arg0)
}

// SwapFee is a free data retrieval call binding the contract method 0x54cf2aeb.
//
// Solidity: function swapFee() view returns(uint256)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Caller) SwapFee(opts *bind.CallOpts) (*big.Int, error) {
	var out []interface{}
	err := _ETHSwapAgentErc721.contract.Call(opts, &out, "swapFee")

	if err != nil {
		return *new(*big.Int), err
	}

	out0 := *abi.ConvertType(out[0], new(*big.Int)).(**big.Int)

	return out0, err

}

// SwapFee is a free data retrieval call binding the contract method 0x54cf2aeb.
//
// Solidity: function swapFee() view returns(uint256)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Session) SwapFee() (*big.Int, error) {
	return _ETHSwapAgentErc721.Contract.SwapFee(&_ETHSwapAgentErc721.CallOpts)
}

// SwapFee is a free data retrieval call binding the contract method 0x54cf2aeb.
//
// Solidity: function swapFee() view returns(uint256)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721CallerSession) SwapFee() (*big.Int, error) {
	return _ETHSwapAgentErc721.Contract.SwapFee(&_ETHSwapAgentErc721.CallOpts)
}

// FillBSC2ETHSwap is a paid mutator transaction binding the contract method 0x9867df11.
//
// Solidity: function fillBSC2ETHSwap(bytes32 bscTxHash, address erc721Addr, address toAddress, uint256 tokenId) returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Transactor) FillBSC2ETHSwap(opts *bind.TransactOpts, bscTxHash [32]byte, erc721Addr common.Address, toAddress common.Address, tokenId *big.Int) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.contract.Transact(opts, "fillBSC2ETHSwap", bscTxHash, erc721Addr, toAddress, tokenId)
}

// FillBSC2ETHSwap is a paid mutator transaction binding the contract method 0x9867df11.
//
// Solidity: function fillBSC2ETHSwap(bytes32 bscTxHash, address erc721Addr, address toAddress, uint256 tokenId) returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Session) FillBSC2ETHSwap(bscTxHash [32]byte, erc721Addr common.Address, toAddress common.Address, tokenId *big.Int) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.FillBSC2ETHSwap(&_ETHSwapAgentErc721.TransactOpts, bscTxHash, erc721Addr, toAddress, tokenId)
}

// FillBSC2ETHSwap is a paid mutator transaction binding the contract method 0x9867df11.
//
// Solidity: function fillBSC2ETHSwap(bytes32 bscTxHash, address erc721Addr, address toAddress, uint256 tokenId) returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721TransactorSession) FillBSC2ETHSwap(bscTxHash [32]byte, erc721Addr common.Address, toAddress common.Address, tokenId *big.Int) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.FillBSC2ETHSwap(&_ETHSwapAgentErc721.TransactOpts, bscTxHash, erc721Addr, toAddress, tokenId)
}

// Initialize is a paid mutator transaction binding the contract method 0xfe4b84df.
//
// Solidity: function initialize(uint256 fee) returns()
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Transactor) Initialize(opts *bind.TransactOpts, fee *big.Int) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.contract.Transact(opts, "initialize", fee)
}

// Initialize is a paid mutator transaction binding the contract method 0xfe4b84df.
//
// Solidity: function initialize(uint256 fee) returns()
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Session) Initialize(fee *big.Int) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.Initialize(&_ETHSwapAgentErc721.TransactOpts, fee)
}

// Initialize is a paid mutator transaction binding the contract method 0xfe4b84df.
//
// Solidity: function initialize(uint256 fee) returns()
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721TransactorSession) Initialize(fee *big.Int) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.Initialize(&_ETHSwapAgentErc721.TransactOpts, fee)
}

// OnERC721Received is a paid mutator transaction binding the contract method 0x150b7a02.
//
// Solidity: function onERC721Received(address operator, address from, uint256 tokenId, bytes data) returns(bytes4)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Transactor) OnERC721Received(opts *bind.TransactOpts, operator common.Address, from common.Address, tokenId *big.Int, data []byte) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.contract.Transact(opts, "onERC721Received", operator, from, tokenId, data)
}

// OnERC721Received is a paid mutator transaction binding the contract method 0x150b7a02.
//
// Solidity: function onERC721Received(address operator, address from, uint256 tokenId, bytes data) returns(bytes4)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Session) OnERC721Received(operator common.Address, from common.Address, tokenId *big.Int, data []byte) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.OnERC721Received(&_ETHSwapAgentErc721.TransactOpts, operator, from, tokenId, data)
}

// OnERC721Received is a paid mutator transaction binding the contract method 0x150b7a02.
//
// Solidity: function onERC721Received(address operator, address from, uint256 tokenId, bytes data) returns(bytes4)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721TransactorSession) OnERC721Received(operator common.Address, from common.Address, tokenId *big.Int, data []byte) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.OnERC721Received(&_ETHSwapAgentErc721.TransactOpts, operator, from, tokenId, data)
}

// RegisterSwapPairToBSC is a paid mutator transaction binding the contract method 0xb0362269.
//
// Solidity: function registerSwapPair_to_BSC(address erc721Addr) returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Transactor) RegisterSwapPairToBSC(opts *bind.TransactOpts, erc721Addr common.Address) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.contract.Transact(opts, "registerSwapPair_to_BSC", erc721Addr)
}

// RegisterSwapPairToBSC is a paid mutator transaction binding the contract method 0xb0362269.
//
// Solidity: function registerSwapPair_to_BSC(address erc721Addr) returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Session) RegisterSwapPairToBSC(erc721Addr common.Address) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.RegisterSwapPairToBSC(&_ETHSwapAgentErc721.TransactOpts, erc721Addr)
}

// RegisterSwapPairToBSC is a paid mutator transaction binding the contract method 0xb0362269.
//
// Solidity: function registerSwapPair_to_BSC(address erc721Addr) returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721TransactorSession) RegisterSwapPairToBSC(erc721Addr common.Address) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.RegisterSwapPairToBSC(&_ETHSwapAgentErc721.TransactOpts, erc721Addr)
}

// RenounceOwnership is a paid mutator transaction binding the contract method 0x715018a6.
//
// Solidity: function renounceOwnership() returns()
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Transactor) RenounceOwnership(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.contract.Transact(opts, "renounceOwnership")
}

// RenounceOwnership is a paid mutator transaction binding the contract method 0x715018a6.
//
// Solidity: function renounceOwnership() returns()
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Session) RenounceOwnership() (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.RenounceOwnership(&_ETHSwapAgentErc721.TransactOpts)
}

// RenounceOwnership is a paid mutator transaction binding the contract method 0x715018a6.
//
// Solidity: function renounceOwnership() returns()
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721TransactorSession) RenounceOwnership() (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.RenounceOwnership(&_ETHSwapAgentErc721.TransactOpts)
}

// SwapETH2BSC is a paid mutator transaction binding the contract method 0xb9927a9c.
//
// Solidity: function swapETH2BSC(address erc721Addr, uint256 tokenId) payable returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Transactor) SwapETH2BSC(opts *bind.TransactOpts, erc721Addr common.Address, tokenId *big.Int) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.contract.Transact(opts, "swapETH2BSC", erc721Addr, tokenId)
}

// SwapETH2BSC is a paid mutator transaction binding the contract method 0xb9927a9c.
//
// Solidity: function swapETH2BSC(address erc721Addr, uint256 tokenId) payable returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Session) SwapETH2BSC(erc721Addr common.Address, tokenId *big.Int) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.SwapETH2BSC(&_ETHSwapAgentErc721.TransactOpts, erc721Addr, tokenId)
}

// SwapETH2BSC is a paid mutator transaction binding the contract method 0xb9927a9c.
//
// Solidity: function swapETH2BSC(address erc721Addr, uint256 tokenId) payable returns(bool)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721TransactorSession) SwapETH2BSC(erc721Addr common.Address, tokenId *big.Int) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.SwapETH2BSC(&_ETHSwapAgentErc721.TransactOpts, erc721Addr, tokenId)
}

// TransferOwnership is a paid mutator transaction binding the contract method 0xf2fde38b.
//
// Solidity: function transferOwnership(address newOwner) returns()
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Transactor) TransferOwnership(opts *bind.TransactOpts, newOwner common.Address) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.contract.Transact(opts, "transferOwnership", newOwner)
}

// TransferOwnership is a paid mutator transaction binding the contract method 0xf2fde38b.
//
// Solidity: function transferOwnership(address newOwner) returns()
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Session) TransferOwnership(newOwner common.Address) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.TransferOwnership(&_ETHSwapAgentErc721.TransactOpts, newOwner)
}

// TransferOwnership is a paid mutator transaction binding the contract method 0xf2fde38b.
//
// Solidity: function transferOwnership(address newOwner) returns()
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721TransactorSession) TransferOwnership(newOwner common.Address) (*types.Transaction, error) {
	return _ETHSwapAgentErc721.Contract.TransferOwnership(&_ETHSwapAgentErc721.TransactOpts, newOwner)
}

// ETHSwapAgentErc721ERC721SwapFilledIterator is returned from FilterERC721SwapFilled and is used to iterate over the raw logs and unpacked data for ERC721SwapFilled events raised by the ETHSwapAgentErc721 contract.
type ETHSwapAgentErc721ERC721SwapFilledIterator struct {
	Event *ETHSwapAgentErc721ERC721SwapFilled // Event containing the contract specifics and raw log

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
func (it *ETHSwapAgentErc721ERC721SwapFilledIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(ETHSwapAgentErc721ERC721SwapFilled)
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
		it.Event = new(ETHSwapAgentErc721ERC721SwapFilled)
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
func (it *ETHSwapAgentErc721ERC721SwapFilledIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *ETHSwapAgentErc721ERC721SwapFilledIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// ETHSwapAgentErc721ERC721SwapFilled represents a ERC721SwapFilled event raised by the ETHSwapAgentErc721 contract.
type ETHSwapAgentErc721ERC721SwapFilled struct {
	Erc721Addr common.Address
	BscTxHash  [32]byte
	ToAddress  common.Address
	Amount     *big.Int
	Raw        types.Log // Blockchain specific contextual infos
}

// FilterERC721SwapFilled is a free log retrieval operation binding the contract event 0x4bb52b61311e1ab52214a9c005f2c218ede8a4db15347ca07e86b3b27a35e4c9.
//
// Solidity: event ERC721SwapFilled(address indexed erc721Addr, bytes32 indexed bscTxHash, address indexed toAddress, uint256 amount)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Filterer) FilterERC721SwapFilled(opts *bind.FilterOpts, erc721Addr []common.Address, bscTxHash [][32]byte, toAddress []common.Address) (*ETHSwapAgentErc721ERC721SwapFilledIterator, error) {

	var erc721AddrRule []interface{}
	for _, erc721AddrItem := range erc721Addr {
		erc721AddrRule = append(erc721AddrRule, erc721AddrItem)
	}
	var bscTxHashRule []interface{}
	for _, bscTxHashItem := range bscTxHash {
		bscTxHashRule = append(bscTxHashRule, bscTxHashItem)
	}
	var toAddressRule []interface{}
	for _, toAddressItem := range toAddress {
		toAddressRule = append(toAddressRule, toAddressItem)
	}

	logs, sub, err := _ETHSwapAgentErc721.contract.FilterLogs(opts, "ERC721SwapFilled", erc721AddrRule, bscTxHashRule, toAddressRule)
	if err != nil {
		return nil, err
	}
	return &ETHSwapAgentErc721ERC721SwapFilledIterator{contract: _ETHSwapAgentErc721.contract, event: "ERC721SwapFilled", logs: logs, sub: sub}, nil
}

// WatchERC721SwapFilled is a free log subscription operation binding the contract event 0x4bb52b61311e1ab52214a9c005f2c218ede8a4db15347ca07e86b3b27a35e4c9.
//
// Solidity: event ERC721SwapFilled(address indexed erc721Addr, bytes32 indexed bscTxHash, address indexed toAddress, uint256 amount)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Filterer) WatchERC721SwapFilled(opts *bind.WatchOpts, sink chan<- *ETHSwapAgentErc721ERC721SwapFilled, erc721Addr []common.Address, bscTxHash [][32]byte, toAddress []common.Address) (event.Subscription, error) {

	var erc721AddrRule []interface{}
	for _, erc721AddrItem := range erc721Addr {
		erc721AddrRule = append(erc721AddrRule, erc721AddrItem)
	}
	var bscTxHashRule []interface{}
	for _, bscTxHashItem := range bscTxHash {
		bscTxHashRule = append(bscTxHashRule, bscTxHashItem)
	}
	var toAddressRule []interface{}
	for _, toAddressItem := range toAddress {
		toAddressRule = append(toAddressRule, toAddressItem)
	}

	logs, sub, err := _ETHSwapAgentErc721.contract.WatchLogs(opts, "ERC721SwapFilled", erc721AddrRule, bscTxHashRule, toAddressRule)
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(ETHSwapAgentErc721ERC721SwapFilled)
				if err := _ETHSwapAgentErc721.contract.UnpackLog(event, "ERC721SwapFilled", log); err != nil {
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

// ParseERC721SwapFilled is a log parse operation binding the contract event 0x4bb52b61311e1ab52214a9c005f2c218ede8a4db15347ca07e86b3b27a35e4c9.
//
// Solidity: event ERC721SwapFilled(address indexed erc721Addr, bytes32 indexed bscTxHash, address indexed toAddress, uint256 amount)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Filterer) ParseERC721SwapFilled(log types.Log) (*ETHSwapAgentErc721ERC721SwapFilled, error) {
	event := new(ETHSwapAgentErc721ERC721SwapFilled)
	if err := _ETHSwapAgentErc721.contract.UnpackLog(event, "ERC721SwapFilled", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// ETHSwapAgentErc721ERC721SwapPairRegisterIterator is returned from FilterERC721SwapPairRegister and is used to iterate over the raw logs and unpacked data for ERC721SwapPairRegister events raised by the ETHSwapAgentErc721 contract.
type ETHSwapAgentErc721ERC721SwapPairRegisterIterator struct {
	Event *ETHSwapAgentErc721ERC721SwapPairRegister // Event containing the contract specifics and raw log

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
func (it *ETHSwapAgentErc721ERC721SwapPairRegisterIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(ETHSwapAgentErc721ERC721SwapPairRegister)
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
		it.Event = new(ETHSwapAgentErc721ERC721SwapPairRegister)
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
func (it *ETHSwapAgentErc721ERC721SwapPairRegisterIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *ETHSwapAgentErc721ERC721SwapPairRegisterIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// ETHSwapAgentErc721ERC721SwapPairRegister represents a ERC721SwapPairRegister event raised by the ETHSwapAgentErc721 contract.
type ETHSwapAgentErc721ERC721SwapPairRegister struct {
	Sponsor    common.Address
	Erc721Addr common.Address
	Name       string
	Symbol     string
	Raw        types.Log // Blockchain specific contextual infos
}

// FilterERC721SwapPairRegister is a free log retrieval operation binding the contract event 0x12529657273f6dc45acc9d441a06a510f514801822db801e58b6b66c7f2312bb.
//
// Solidity: event ERC721SwapPairRegister(address indexed sponsor, address indexed erc721Addr, string name, string symbol)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Filterer) FilterERC721SwapPairRegister(opts *bind.FilterOpts, sponsor []common.Address, erc721Addr []common.Address) (*ETHSwapAgentErc721ERC721SwapPairRegisterIterator, error) {

	var sponsorRule []interface{}
	for _, sponsorItem := range sponsor {
		sponsorRule = append(sponsorRule, sponsorItem)
	}
	var erc721AddrRule []interface{}
	for _, erc721AddrItem := range erc721Addr {
		erc721AddrRule = append(erc721AddrRule, erc721AddrItem)
	}

	logs, sub, err := _ETHSwapAgentErc721.contract.FilterLogs(opts, "ERC721SwapPairRegister", sponsorRule, erc721AddrRule)
	if err != nil {
		return nil, err
	}
	return &ETHSwapAgentErc721ERC721SwapPairRegisterIterator{contract: _ETHSwapAgentErc721.contract, event: "ERC721SwapPairRegister", logs: logs, sub: sub}, nil
}

// WatchERC721SwapPairRegister is a free log subscription operation binding the contract event 0x12529657273f6dc45acc9d441a06a510f514801822db801e58b6b66c7f2312bb.
//
// Solidity: event ERC721SwapPairRegister(address indexed sponsor, address indexed erc721Addr, string name, string symbol)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Filterer) WatchERC721SwapPairRegister(opts *bind.WatchOpts, sink chan<- *ETHSwapAgentErc721ERC721SwapPairRegister, sponsor []common.Address, erc721Addr []common.Address) (event.Subscription, error) {

	var sponsorRule []interface{}
	for _, sponsorItem := range sponsor {
		sponsorRule = append(sponsorRule, sponsorItem)
	}
	var erc721AddrRule []interface{}
	for _, erc721AddrItem := range erc721Addr {
		erc721AddrRule = append(erc721AddrRule, erc721AddrItem)
	}

	logs, sub, err := _ETHSwapAgentErc721.contract.WatchLogs(opts, "ERC721SwapPairRegister", sponsorRule, erc721AddrRule)
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(ETHSwapAgentErc721ERC721SwapPairRegister)
				if err := _ETHSwapAgentErc721.contract.UnpackLog(event, "ERC721SwapPairRegister", log); err != nil {
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

// ParseERC721SwapPairRegister is a log parse operation binding the contract event 0x12529657273f6dc45acc9d441a06a510f514801822db801e58b6b66c7f2312bb.
//
// Solidity: event ERC721SwapPairRegister(address indexed sponsor, address indexed erc721Addr, string name, string symbol)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Filterer) ParseERC721SwapPairRegister(log types.Log) (*ETHSwapAgentErc721ERC721SwapPairRegister, error) {
	event := new(ETHSwapAgentErc721ERC721SwapPairRegister)
	if err := _ETHSwapAgentErc721.contract.UnpackLog(event, "ERC721SwapPairRegister", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// ETHSwapAgentErc721ERC721SwapStartedIterator is returned from FilterERC721SwapStarted and is used to iterate over the raw logs and unpacked data for ERC721SwapStarted events raised by the ETHSwapAgentErc721 contract.
type ETHSwapAgentErc721ERC721SwapStartedIterator struct {
	Event *ETHSwapAgentErc721ERC721SwapStarted // Event containing the contract specifics and raw log

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
func (it *ETHSwapAgentErc721ERC721SwapStartedIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(ETHSwapAgentErc721ERC721SwapStarted)
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
		it.Event = new(ETHSwapAgentErc721ERC721SwapStarted)
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
func (it *ETHSwapAgentErc721ERC721SwapStartedIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *ETHSwapAgentErc721ERC721SwapStartedIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// ETHSwapAgentErc721ERC721SwapStarted represents a ERC721SwapStarted event raised by the ETHSwapAgentErc721 contract.
type ETHSwapAgentErc721ERC721SwapStarted struct {
	Erc721Addr common.Address
	FromAddr   common.Address
	TokenId    *big.Int
	TokenUri   string
	FeeAmount  *big.Int
	Raw        types.Log // Blockchain specific contextual infos
}

// FilterERC721SwapStarted is a free log retrieval operation binding the contract event 0xfffc8f34cdeb5f96ee43d1a2ea88c280f73bf3ff2e7208ac4bb71821a5530358.
//
// Solidity: event ERC721SwapStarted(address indexed erc721Addr, address indexed fromAddr, uint256 tokenId, string tokenUri, uint256 feeAmount)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Filterer) FilterERC721SwapStarted(opts *bind.FilterOpts, erc721Addr []common.Address, fromAddr []common.Address) (*ETHSwapAgentErc721ERC721SwapStartedIterator, error) {

	var erc721AddrRule []interface{}
	for _, erc721AddrItem := range erc721Addr {
		erc721AddrRule = append(erc721AddrRule, erc721AddrItem)
	}
	var fromAddrRule []interface{}
	for _, fromAddrItem := range fromAddr {
		fromAddrRule = append(fromAddrRule, fromAddrItem)
	}

	logs, sub, err := _ETHSwapAgentErc721.contract.FilterLogs(opts, "ERC721SwapStarted", erc721AddrRule, fromAddrRule)
	if err != nil {
		return nil, err
	}
	return &ETHSwapAgentErc721ERC721SwapStartedIterator{contract: _ETHSwapAgentErc721.contract, event: "ERC721SwapStarted", logs: logs, sub: sub}, nil
}

// WatchERC721SwapStarted is a free log subscription operation binding the contract event 0xfffc8f34cdeb5f96ee43d1a2ea88c280f73bf3ff2e7208ac4bb71821a5530358.
//
// Solidity: event ERC721SwapStarted(address indexed erc721Addr, address indexed fromAddr, uint256 tokenId, string tokenUri, uint256 feeAmount)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Filterer) WatchERC721SwapStarted(opts *bind.WatchOpts, sink chan<- *ETHSwapAgentErc721ERC721SwapStarted, erc721Addr []common.Address, fromAddr []common.Address) (event.Subscription, error) {

	var erc721AddrRule []interface{}
	for _, erc721AddrItem := range erc721Addr {
		erc721AddrRule = append(erc721AddrRule, erc721AddrItem)
	}
	var fromAddrRule []interface{}
	for _, fromAddrItem := range fromAddr {
		fromAddrRule = append(fromAddrRule, fromAddrItem)
	}

	logs, sub, err := _ETHSwapAgentErc721.contract.WatchLogs(opts, "ERC721SwapStarted", erc721AddrRule, fromAddrRule)
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(ETHSwapAgentErc721ERC721SwapStarted)
				if err := _ETHSwapAgentErc721.contract.UnpackLog(event, "ERC721SwapStarted", log); err != nil {
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

// ParseERC721SwapStarted is a log parse operation binding the contract event 0xfffc8f34cdeb5f96ee43d1a2ea88c280f73bf3ff2e7208ac4bb71821a5530358.
//
// Solidity: event ERC721SwapStarted(address indexed erc721Addr, address indexed fromAddr, uint256 tokenId, string tokenUri, uint256 feeAmount)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Filterer) ParseERC721SwapStarted(log types.Log) (*ETHSwapAgentErc721ERC721SwapStarted, error) {
	event := new(ETHSwapAgentErc721ERC721SwapStarted)
	if err := _ETHSwapAgentErc721.contract.UnpackLog(event, "ERC721SwapStarted", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// ETHSwapAgentErc721OwnershipTransferredIterator is returned from FilterOwnershipTransferred and is used to iterate over the raw logs and unpacked data for OwnershipTransferred events raised by the ETHSwapAgentErc721 contract.
type ETHSwapAgentErc721OwnershipTransferredIterator struct {
	Event *ETHSwapAgentErc721OwnershipTransferred // Event containing the contract specifics and raw log

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
func (it *ETHSwapAgentErc721OwnershipTransferredIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(ETHSwapAgentErc721OwnershipTransferred)
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
		it.Event = new(ETHSwapAgentErc721OwnershipTransferred)
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
func (it *ETHSwapAgentErc721OwnershipTransferredIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *ETHSwapAgentErc721OwnershipTransferredIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// ETHSwapAgentErc721OwnershipTransferred represents a OwnershipTransferred event raised by the ETHSwapAgentErc721 contract.
type ETHSwapAgentErc721OwnershipTransferred struct {
	PreviousOwner common.Address
	NewOwner      common.Address
	Raw           types.Log // Blockchain specific contextual infos
}

// FilterOwnershipTransferred is a free log retrieval operation binding the contract event 0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0.
//
// Solidity: event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Filterer) FilterOwnershipTransferred(opts *bind.FilterOpts, previousOwner []common.Address, newOwner []common.Address) (*ETHSwapAgentErc721OwnershipTransferredIterator, error) {

	var previousOwnerRule []interface{}
	for _, previousOwnerItem := range previousOwner {
		previousOwnerRule = append(previousOwnerRule, previousOwnerItem)
	}
	var newOwnerRule []interface{}
	for _, newOwnerItem := range newOwner {
		newOwnerRule = append(newOwnerRule, newOwnerItem)
	}

	logs, sub, err := _ETHSwapAgentErc721.contract.FilterLogs(opts, "OwnershipTransferred", previousOwnerRule, newOwnerRule)
	if err != nil {
		return nil, err
	}
	return &ETHSwapAgentErc721OwnershipTransferredIterator{contract: _ETHSwapAgentErc721.contract, event: "OwnershipTransferred", logs: logs, sub: sub}, nil
}

// WatchOwnershipTransferred is a free log subscription operation binding the contract event 0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0.
//
// Solidity: event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Filterer) WatchOwnershipTransferred(opts *bind.WatchOpts, sink chan<- *ETHSwapAgentErc721OwnershipTransferred, previousOwner []common.Address, newOwner []common.Address) (event.Subscription, error) {

	var previousOwnerRule []interface{}
	for _, previousOwnerItem := range previousOwner {
		previousOwnerRule = append(previousOwnerRule, previousOwnerItem)
	}
	var newOwnerRule []interface{}
	for _, newOwnerItem := range newOwner {
		newOwnerRule = append(newOwnerRule, newOwnerItem)
	}

	logs, sub, err := _ETHSwapAgentErc721.contract.WatchLogs(opts, "OwnershipTransferred", previousOwnerRule, newOwnerRule)
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(ETHSwapAgentErc721OwnershipTransferred)
				if err := _ETHSwapAgentErc721.contract.UnpackLog(event, "OwnershipTransferred", log); err != nil {
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
func (_ETHSwapAgentErc721 *ETHSwapAgentErc721Filterer) ParseOwnershipTransferred(log types.Log) (*ETHSwapAgentErc721OwnershipTransferred, error) {
	event := new(ETHSwapAgentErc721OwnershipTransferred)
	if err := _ETHSwapAgentErc721.contract.UnpackLog(event, "OwnershipTransferred", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

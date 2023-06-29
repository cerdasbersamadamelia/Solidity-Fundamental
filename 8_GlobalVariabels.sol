// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    address public contractAddress;
    address public payer; // adress who call pay()
    address public origin; // address the first transaction, will not change
    uint public amount; // ether

    constructor(){
        contractAddress = address(this); // current contract address
    }

    function pay() public payable {
        payer = msg.sender;
        origin = tx.origin;
        amount = msg.value;
    }

    function getBlockInfo() public view returns(uint, uint, uint) {
        return(
            block.number, // number blockchain
            block.timestamp, // current time blockchain
            block.chainid // id blockchain
        );
    }
}
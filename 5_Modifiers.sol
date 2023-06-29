// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    string public name = "Damelia";
    uint public balance;

    // view --> free and doesn't modified state
    function getName() public view returns(string memory) {
        return name;
    }

    // pure --> free and doesn't modified state
    function add(uint a, uint b) public pure returns(uint) {
        return a + b;
    }

    // gass fee --> allow to receive ether whenever the transaction is submitted
    function pay() public payable {
        balance = msg.value;
    }
}
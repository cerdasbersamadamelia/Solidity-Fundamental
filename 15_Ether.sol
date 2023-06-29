// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    uint public value1 = 1 wei;
    uint public value2 = 1;
    uint public value3 = 1 gwei;
    uint public value4 = 1000000000;
    uint public value5 = 1 ether;
    uint public value6 = 1000000000000000000;

    // receive ether
    receive() external payable{
        // action after receive ether
    }

    // receive ether with fallback
    uint public count = 0;
    fallback() external payable {
        count ++;
        // action after receive ether
    }

    // check the balance
    function checkBalance() public view returns (uint) {
        return address(this).balance;
    }

    // send ether to different address
    function transfer(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed!");
    }
}
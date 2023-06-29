// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// the mother
contract Ownable {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "caller must be owner");
        _;
    }
}

// the child --> inheritance
contract MyContract is Ownable {
    string public name = "Damelia";

    function setName(string memory _name) public onlyOwner {
        name = _name;
    }
}
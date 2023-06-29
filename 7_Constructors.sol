// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    string public name;

    // like function but only "run once" when contract was put in the blockchain
    constructor(string memory _name) {
        name = _name;
    }
}
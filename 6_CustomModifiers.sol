// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    address private owner;
    string public name = "Damelia";

    modifier onlyOwner {
        require(msg.sender == owner, "caller must be owner");
        _; // function who used this modifier will be executed
    }

    function setName(string memory _name) onlyOwner public {
        name = _name;
    }
}
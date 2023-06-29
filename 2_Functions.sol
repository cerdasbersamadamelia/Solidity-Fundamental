// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    string name = "Damelia";

    // write function --> gas fee
    // cuz change the blockchain's state
    function setName(string memory _name) public {
        name = _name;
    }

    // read function --> free
    // cuz pure, no change any state
    function getName() public view returns(string memory) {
        return name;
    }

    // change the state but free, cuz has no parameter
    function resetName() public {
        name = "Damelia";
    }
}
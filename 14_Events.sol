// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    string public message = "Damelia Ngoding";

    // event --> notify frontend about status changes or important events that occur in the contract
    event MessageUpdated(
        // indexed is for searching
        address indexed _user,
        string _message
    );

    function updateMessage(string memory _message) public {
        message = _message;
        emit MessageUpdated(msg.sender, _message);
    }
}
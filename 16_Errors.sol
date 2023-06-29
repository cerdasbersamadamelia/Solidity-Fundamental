// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    event Log(string message);

    // using require
    function example1(uint _value) public {
        require(_value > 10, "must be greater than 10");
        emit Log("sucess");
    }
    
    // using if
    function example2(uint _value) public {
        if(_value <= 10){
            revert("must be lighter or equal than 10");
        }
        emit Log("sucess");
    }
}
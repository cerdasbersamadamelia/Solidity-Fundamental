// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    mapping(uint => string) public names;
    mapping(uint => address) public addresses;
    mapping(uint => uint) public balances;
    mapping(uint => bool) public hasVoted;
    mapping(uint => mapping(uint => bool)) public myMapping;

    // ------------------------------------------------------------- //

    // mapinupate mappings
    mapping(uint => string) public myMapping2;

    function get(uint _id) public view returns(string memory) {
        return myMapping2[_id];
    }
    function set(uint _id, string memory _value) public {
        myMapping2[_id] = _value;
    }
    function remove(uint _id) public {
        // resets the value to the default value
        delete myMapping2[_id];
    }
}
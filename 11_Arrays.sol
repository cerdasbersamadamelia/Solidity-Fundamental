// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    // How to write arrays
    uint[] public array1 = [1, 2, 3];
    uint[] public array2;
    uint[10] public array3; // there are 10 value inside the array
    string[] public array4 = ["banana", "coconut", "dragon fruit"];
    string[] public array5;
    string[10] public array6; // there are 10 value inside the array

    // ------------------------------------------------------------- //

    // Example manipulate arrays
    uint[] public array;

    function get(uint i) public view returns(uint) {
        return array[i];
    }
    function length() public view returns(uint) {
        return array.length;
    }
    function push(uint i) public {
        return array.push(i);
    }
    function pop() public {
        return array.pop();
    }
    function remove(uint i) public {
        delete array[i];
    }
}
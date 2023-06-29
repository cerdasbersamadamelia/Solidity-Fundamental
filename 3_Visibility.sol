// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    // no visibility
    string name1 = "Damelia";
    
    // only accessible inside the smart contract, not outside and inherited
    string private name2 = "Damelia 2";

    // only accessible inside the smart contract but can be inherited, not outside
    string internal  name3 = "Damelia 3";

    // accessible inside, outside, and inherited
    string public  name4 = "Damelia 4";
}
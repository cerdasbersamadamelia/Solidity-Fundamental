// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    uint public count;

    // public
    function increment1() public {
        count = count + 1;
    }
    function increment2() public {
        increment1();
    }
    
    // private --> increment3 invisible (only inside) but can still execute
    // the result show by increment4
    function increment3() private {
        count = count + 1;
    }
    function increment4() public {
        increment3();
    }

    // external --> only call by another contract
    function increment5() external  {
        count = count + 1;
    }
    
    // internal --> increment6 invisible (inside and inherited) but can still execute
    // the result show by increment7
    function increment6() internal  {
        count = count + 1;
    }

    function increment7() public {
        increment6();
    }
}
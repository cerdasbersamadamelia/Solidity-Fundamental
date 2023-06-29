// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    // ---- Math ----
    function add(uint a, uint b) external pure returns(uint) {
        return a + b;
    }
    function sub(uint a, uint b) external pure returns(uint) {
        return a - b;
    }
    function mul(uint a, uint b) external pure returns(uint) {
        return a * b;
    }
    function div(uint a, uint b) external pure returns(uint) {
        return a / b;
    }
    function exp(uint a, uint b) external pure returns(uint) {
        return a ** b;
    }
    function mod(uint a, uint b) external pure returns(uint) {
        return a % b;
    }
    function increament(uint a) external pure returns(uint) {
        a++;
        return a;
    }
    function decreament(uint a) external pure returns(uint) {
        a--;
        return a;
    }
    function mathExample() external pure returns(uint) {
        uint a;
        a = a + 1; // 1
        a++; // 2
        a = a * 2; // 4
        a = a ** 2; // 16
        a = a / 2; // 8
        a = a - 1; // 7
        a--; // 6
        return a;
    }

    // ------------------------------------------------------------- //
    
    // ---- Comparation ----
    function eq(uint a, uint b) external pure returns(bool) {
        return a == b;
    }
    function notEq(uint a, uint b) external pure returns(bool) {
        return a != b;
    }
    function gt(uint a, uint b) external pure returns(bool) {
        return a > b;
    }
    function lt(uint a, uint b) external pure returns(bool) {
        return a < b;
    }
    function gtOrEq(uint a, uint b) external pure returns(bool) {
        return a >= b;
    }
    function ltOrEq(uint a, uint b) external pure returns(bool) {
        return a <= b;
    }
    // Example of non-integer comparation
    function checkAddress() external pure returns(bool){
        address address1 = 0xF7Ef55Dce27E2853e87a3045BAc86A5A04204dCd;
        address address2 = 0xF7Ef55Dce27E2853e87a3045BAc86A5A04204dCd;
        return(address1 == address2);
    }

    // ------------------------------------------------------------- //
    
    // ---- Logical ----
    function and(bool a, bool b) external pure returns(bool){
        return a && b;
    }
    function or(bool a, bool b) external pure returns(bool){
        return a || b;
    }
    function not(bool a) external pure returns(bool){
        return !a;
    }
    function comparisonExample() external pure returns(bool){
        return (1 + 1 == 2) && (2 + 2 == 4);
    }
}
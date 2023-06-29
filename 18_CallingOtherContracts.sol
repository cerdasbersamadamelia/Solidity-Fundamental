// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// first contract
contract SecretVault {
    string private secret;

    constructor(string memory _secret) {
        secret = _secret;
    }

    function setSecret(string memory _secret) external {
        secret = _secret;
    }
    
    function getSecret() external view returns(string memory) {
        return secret;
    }
}

// second contract
contract MyContract {
    SecretVault public secretVault;

    constructor(SecretVault _secretVault){
        secretVault = _secretVault;
    }

    function setSecret(string memory _secret) public {
        secretVault.setSecret(_secret);
    }
    
    function getSecret() external view returns(string memory) {
        return secretVault.getSecret();
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract KeyManager {
    mapping(address => bytes32) private keys;

    function storeKey(bytes32 key) public {
        keys[msg.sender] = key;
    }

    function retrieve() public view returns (bytes32) {
        return keys[msg.sender];
    }
}

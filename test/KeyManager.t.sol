// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/KeyManager.sol";

contract KeyManagerTest is Test {
    KeyManager keyManager;

    function setUp() public {
        keyManager = new KeyManager();
    }

    function testStoreAndRetrieveKey() public {
        bytes32 keyToStore = keccak256(abi.encodePacked("my-secret-key"));
        keyManager.storeKey(keyToStore);
        bytes32 retrievedKey = keyManager.retrieve();
        assertEq(retrievedKey, keyToStore, "The retrieved key should match the stored key.");
    }

    function testRetrieveUnsetKey() public view {
        bytes32 key = keyManager.retrieve();
        assertEq(key, bytes32(0), "The retrieved key should be the zero value when unset.");
    }
}

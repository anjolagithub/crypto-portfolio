// script/DeployKeyManager.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/KeyManager.sol";

contract DeployKeyManager is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy the KeyManager contract
        KeyManager keyManager = new KeyManager();

        // Optionally, you can log the address of the deployed contract
        console.log("KeyManager deployed at:", address(keyManager));

        vm.stopBroadcast();
    }
}

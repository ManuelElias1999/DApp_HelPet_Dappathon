// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {Script, console} from "forge-std/Script.sol";
import {HelPetToken} from "../src/tokenHelPet.sol";


/**
 * @title TokenHelPetScript 
 * @dev Deployment script for TokenHelPet contract
 */

contract TokenHelPetScript is Script {
    // Instance of the TokenHelPet contract
    HelPetToken public token;
    // Address that will be set as owner and agent
    address owner;

    /**
     * @dev Sets up initial state before deployment
     */
    function setUp() public {
        owner = msg.sender;
    }

    /**
     * @dev Main deployment function
     * Deploys TokenHelPet contract and sets up initial agent
     */
    function run() public {
        vm.startBroadcast();

        // Deploy new token contract with name "HelPet" and symbol "HPET"
        token = new HelPetToken("HelPet", "HPET");
        // Add deployer as an agent
        token.addAgent(owner);

        vm.stopBroadcast();
    }

}
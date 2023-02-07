// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract WavePortal {
    uint totalWaves;
    mapping(address => uint) addressWaveCounts;

    constructor () {
        console.log("Hi, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        addressWaveCounts[msg.sender]++;
        console.log("%s has waved!", msg.sender);
        console.log("%s has waved his hand %s times", msg.sender, addressWaveCounts[msg.sender]);
    }

    function getTotalWaves() public view returns(uint) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

}
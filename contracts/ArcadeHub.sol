// contracts/ArcadeHub.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ArcadeHub {
    mapping(address => uint256) public scores;

    function update(uint256 newScore) external {
        if (newScore > scores[msg.sender]) {
            scores[msg.sender] = newScore;
        }
    }
}

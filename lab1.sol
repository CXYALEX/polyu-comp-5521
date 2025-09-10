// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

// Our first contract is a faucet!
contract Faucet {
    // Accept any incoming amount
    receive() external payable {}

    // Give out ether to anyone who asks
    function withdraw(uint256 withdraw_amount) public payable {
        // Limit withdrawal amount
        require(withdraw_amount <= 100000000000000000);
        // Send coins
        payable(msg.sender).transfer(withdraw_amount);
    }
}
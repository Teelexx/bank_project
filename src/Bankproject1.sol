// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract BankProject1 {

    mapping(address => uint256) public balances;

    // Deposit Ether
    function deposit() public payable {
        require(msg.value > 0, "Send some ether");
        balances[msg.sender] += msg.value;
    }

    // Withdraw Ether
    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");

        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    // Check Balance
    function getBalance(address user) public view returns(uint256) {
        return balances[user];
    }
}
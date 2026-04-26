// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "forge-std/Test.sol";
import "../src/BankProject1.sol";

contract BankProject1Test is Test {

    BankProject1 bank;

    function setUp() public {
        bank = new BankProject1();
    }

    function testDeposit() public {
        bank.deposit{value: 1 ether}();
        assertEq(bank.getBalance(address(this)), 1 ether);
    }

    function testWithdraw() public {
        bank.deposit{value: 2 ether}();
        bank.withdraw(1 ether);

        assertEq(bank.getBalance(address(this)), 1 ether);
    }
}
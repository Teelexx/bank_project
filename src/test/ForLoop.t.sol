// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "forge-std/Test.sol";
import "../src/ForLoop.sol";

contract ForLoopTest is Test {

    ForLoop loop;

    function setUp() public {
        loop = new ForLoop();
    }

    function testAddAccounts() public {
        string[] memory names = new string[](2);
        uint256[] memory balances = new uint256[](2);

        names[0] = "John";
        names[1] = "Mary";

        balances[0] = 100;
        balances[1] = 200;

        loop.addMultipleAccounts(names, balances);

        assertEq(loop.getAccountsLength(), 2);
    }
}
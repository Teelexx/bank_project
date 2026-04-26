// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ForLoop {

    struct Account {
        string name;
        uint256 balance;
    }

    Account[] public accounts;

    function addMultipleAccounts(
        string[] memory names,
        uint256[] memory balances
    ) public {

        require(names.length == balances.length, "Length mismatch");

        for(uint i = 0; i < names.length; i++) {
            accounts.push(Account(names[i], balances[i]));
        }
    }

    function getAccountsLength() public view returns(uint256) {
        return accounts.length;
    }
}
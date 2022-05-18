// contracts/access-control/Auth.sol
// SPDX-License-Identifier: MIT
/*
    a simple access control system to our Box contract: we will store an administrator 
    address in a contract called Auth, and only let Box be used by those accounts that Auth allows.
*/

pragma solidity ^0.8.0;

contract Auth {
    address private _administrator;

    constructor(address deployer) {
        // Make the deployer of the contract the administrator
        _administrator = deployer;
    }

    function isAdministrator(address user) public view returns (bool) {
        return user == _administrator;
    }
}
// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import Auth from the access-control subdirectory
import "./access-control/Auth.sol";

// Contract Box is a contract that let people store a value that can be later retrieved.
contract Box {
    uint256 private _value;
    Auth private _auth;

    // Emitted when the stored value changes
    event ValueChanged(uint256 value);

    constructor() {
        _auth = new Auth(msg.sender);
    }

    // Stores a new value in the contract
    function store(uint256 value) public {
        _value = value;
        emit ValueChanged(value);
    }

    // Reads the last stored value
    function retrieve() public view returns (uint256) {
        return _value;
    }
}
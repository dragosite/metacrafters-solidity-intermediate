// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract Example {
    address public owner;

    // Sets owner variable
    constructor() {
        owner = msg.sender;
    }

    // Example use of require
    function requireExample() public view returns (address) {
        require(msg.sender != owner, "Owner is not allowed to run this function");
        return msg.sender;
    }

    // Example use of assert
    function assertExample() public view {
        assert(msg.sender != owner);
    }

    // Example use of revert
    function revertExample() public view returns (address) {
        if (msg.sender == owner) {
            revert("Owner is not allowed to run this function");
        }
        return msg.sender;
    }
}

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

contract Modifiers {
    uint public myNumber;
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "Only the contract owner can call this function."
        );
        _; // This indicates where the modified function's code should be inserted.
    }

    function setNumber(uint _number) public onlyOwner {
        myNumber = _number;
    }

    function getNumber() public view returns (uint) {
        return myNumber;
    }
}

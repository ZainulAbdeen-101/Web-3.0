// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

contract Basic {
    uint store; //example of a state Variable

    constructor(uint _store) {
        store = _store;
    }

    function SET(uint x) public {
        store += x;
    }

    function GET() public view returns (uint) {
        return store;
    }
}

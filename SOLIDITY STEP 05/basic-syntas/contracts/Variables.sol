// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

contract Variable {
    // State Variables − Variables whose values are permanently stored in a contract storage.
    address public owner;
    uint public value;
    uint public time;

    constructor() payable {
        // use Global variable
        owner = msg.sender; // The address of the account that sent the current transaction.
        value = msg.value; //The amount of Ether sent with the current transaction.
        time = block.timestamp; //The timestamp of the current block.
    }

    function getResult() public pure returns (uint) {
        //Local Variables − Variables whose values are present till function is executing.
        uint a = 1; // local variable
        uint b = 2;
        uint result = a + b;
        return result; //access the local variable
    }
}

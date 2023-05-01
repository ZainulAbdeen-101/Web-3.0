// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

contract Mappings {
    mapping(string => uint256) public myMap;

    function setValue(string memory key, uint256 value) public {
        myMap[key] = value;
    }

    function getValue(string memory key) public view returns (uint256) {
        return myMap[key];
    }
}

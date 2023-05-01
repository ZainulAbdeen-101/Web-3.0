// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract DataTypes {
    //example of a state Variable
    int num; // Signed int from 8 bits to 256 bits. int256 is the same as int.
    uint age; // Unsigned int from 8 bits to 256 bits. uint256 is the same as uint.
    string name;
    bool Isold;
    address public myAddress =0x66B0b1d2930059407DcC30F1A2305435fc37315E;

    constructor(string memory _name, uint _age) {
        age = _age;
        name = _name;
       
       
    }

    function GetName() public view returns (string memory) {
        return name;
    }

    function GetAge() public view returns (uint) {
        return age;
    }

    function ISold() public view returns (bool) {
        return Isold;
    }

 
}

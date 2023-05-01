// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

contract Arrays {
    // Define a dynamic array of integers
    uint256[] public myArray;
    uint256[5] myNumbers; // Declare a fixed-size array of 5 uint256 values

    // Add an integer to the array
    function addElement(uint256[] memory element) public {
        for (uint256 i = 0; i < element.length; i++) {
            myArray.push(element[i]);
        }

        //error YOU CANNOT 'PUSH' OR 'POP' IN A FIXED ARRAY
        // arr1.push(element)
        // arr1.pop(element);
    }

    function setNumber(uint8 index, uint256 value) public {
        require(index < 5, "Index out of bounds"); // Make sure the index is within the array bounds
        myNumbers[index] = value; // Set the value at the specified index
    }

    function getNumber(uint8 index) public view returns (uint256) {
        require(index < 5, "Index out of bounds"); // Make sure the index is within the array bounds
        return myNumbers[index]; // Return the value at the specified index
    }

    function getNumberLength() public view returns (uint) {
        return myNumbers.length;
    }

    // Get the length of the array
    function getLength() public view returns (uint) {
        return myArray.length;
    }

    // Get an element from the array by index
    function getElement(uint index) public view returns (uint) {
        return myArray[index];
    }
}

contract Structs {
    struct Book {
        string title;
        string author;
        uint book_id;
    }
    Book book;

    function setBook() public {
        book = Book("Learn Java", "TP", 1);
    }

    function getBookId() public view returns (uint) {
        return book.book_id;
    }
}

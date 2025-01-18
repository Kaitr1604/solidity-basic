// SPDX-License-Identifier: None
pragma solidity 0.8.3;

contract Array {
    // storage array: khai báo ở ngoài function, lưu trên node
    // memory array: no gas, khai báo trong function, giải phóng khi đóng function
    // array as parameter

    uint a; // 1,3,4

    uint[] myArray = [1,2,5,6]; //storage array; //dynamic size
    uint[4] myFixedArray = [1,2,5,6]; //fixed size

    constructor(uint _a) {
        a = _a;
    }

    function setValue(uint _value) external {
        a = _value;
    }

    function add (uint _value) external  {
        myArray.push(_value);
    }

    function deleteItem () external {
        myArray[0] = 9;
        delete myArray[0]; // myArray[0] = 0; //default value of uint //array length was not change
    }

    function memoryArray() external  {
        uint[] memory mArray = new uint[](10); // phải khai báo độ dài của memory array
        mArray[0] = 1;
        delete  mArray[0];
        myArray = mArray;
    }

    function parameterArray (uint[] calldata pArray) external  {

    }

    function parameterArrayMemory (uint[] memory pArray) public  { //internal, private

    }
}
// SPDX-License-Identifier: None
pragma solidity 0.8.3;

contract Array {
    // storage array: khai báo ở ngoài function, lưu trên node
    // memory array: no gas, khai báo trong function, giải phóng khi đóng function
    // array as parameter

    uint a; // 1,3,4

    uint[] myArray = [1,2,5,6]; //storage array;

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
}
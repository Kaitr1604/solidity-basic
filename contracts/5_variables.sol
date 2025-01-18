// SPDX-License-Identifier: None
pragma solidity 0.8.3;

contract Variables {

    //fixed-size types
    bool isEnabled; //true / false
    uint a; // 1,3,4
    address sender;
    bytes32 data; //

    //variable-size types
    string name;
    bytes dataBytes;
    uint[] amounts; //array same type item
    mapping (address => bool) whitelist; // address --> true

    // user define
    struct User {
        uint id;
        string name;
        bool IsFriend;
    }

    enum Colors {
        Red,
        Green,
        Blue
    }

    // msg.sender //address sender
    // msg.value
    // All types: https://docs.soliditylang.org/en/v0.8.14/types.html
}
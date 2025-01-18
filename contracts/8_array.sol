// SPDX-License-Identifier: None
pragma solidity 0.8.3;

contract Array {
    uint a;
    mapping(address => uint) balances;
    mapping(address => mapping(string => uint)) balances2;

    constructor(uint _a) {
        a = _a;
    }

    function foo() external  {
        balances[msg.sender] = 100;
        delete balances[msg.sender];

        //default value
        // string memory notExistKey = "array_string";
        // uint b = balances[notExistKey]; // 0
    }
}
// SPDX-License-Identifier: None
pragma solidity 0.8.3;

import "./a_13_debug.sol";

contract Inheritance is DEBUG {

    constructor() DEBUG() {
        a = 50;
    }

    function testInherit() public onlyAdmin {
        a = 1;
    }
}
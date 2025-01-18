// SPDX-License-Identifier: None
pragma solidity 0.8.3;

contract DEBUG {
    //require
    //modifier
    uint public a;
    uint public b;

    constructor() {
        a = 10;
        b = 100;
    }
    
    function foo() public  {
        a = 5;
        require(a == 8, "a need to be 8");
    }

    modifier checkA() {
        require(a == 8, "a need to be 8");
        _;
    }

    modifier checkB(uint _testvalue) {
        require(b == _testvalue, "b need to match value");
        _;
    }

    function bar() public checkA checkB(9)  {
        a = 5;
    }

    function test() public checkB(10)  {
        a = 5;
    }

    function test2(uint _v) public checkB(_v) {
        a = 5;
    }

    address admin = 0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B;
    modifier  onlyAdmin() {
        require(msg.sender == admin, "only admin can call");
        _;
    }

    function testModifier() public onlyAdmin {
        b = 1000;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity  0.8.3;

interface IHelloInterface {
    function foo() external;
    function bar() external;
    function fat() external;
}

contract HelloInterface {
    uint public a = 10;

    function foo() public  {
        a = 5;
    }

    function bar() external {
        a = 15;
    }

    function fat() external {
        a = 20;
    }

}

contract Greeting {
    address AHello;

    function callFoo () external {
        IHelloInterface h = IHelloInterface(AHello);
        h.foo();
    }
}
// SPDX-License-Identifier: None
pragma solidity 0.8.3;

contract Function {

    //default scope: private
    bool isEnabled; //true / false
    uint a; // 1,3,4
    address sender;
    bytes32 data; //
    
    uint public b; //auto generate get function --> b()

    constructor(uint _a) {
        a = _a;
    }

    //private: private with code only, not private with blockchain networth;
    function getAddress() private view returns (address) {
        return sender;
    }

    //internal: call inside only, extend class can use.
    function getData() internal view returns (bytes32) {
        return data;
    }

    //external: call from outside only
    function getValue() external view returns (uint) {
        return a;
    }

    //public: every can use
    function getEnabled() public view returns (bool) {
        return isEnabled;
    }

    function setValue(uint _value) external {
        a = _value;
    }
}
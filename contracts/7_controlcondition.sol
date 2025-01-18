// SPDX-License-Identifier: None
pragma solidity 0.8.3;

contract ControllCondition {

    //default scope: private
    bool isEnabled; //true / false
    uint a; // 1,3,4
    address sender;
    bytes32 data; //

    function setValue(uint _value) external {
        if (isEnabled == true && a == 1) {
            //do something
            a = 2;
            while (isEnabled) {
                if (a == 5) {
                    isEnabled = false;
                }
                //do something
            }
            // do something
        } else {
            for (uint i = 0; i < 10; i++) {
                //do something
                if (i == 9) {
                    break;
                }
                if (i == 5) {
                    continue ;
                }
            }
        }
    }
}
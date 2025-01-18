// SPDX-License-Identifier: None
pragma solidity 0.8.3;

contract Event {
    event deposit (address from, uint amount);
    
    function depositEvent(uint _amount) external  {
        emit deposit(msg.sender, _amount);
    }
}
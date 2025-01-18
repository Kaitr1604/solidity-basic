// SPDX-License-Identifier: None
pragma solidity 0.8.3;

contract SendAndReceiveETH {
    event deposit (address from, uint amount);
    
    function sendEther(address payable receiver, uint _amount) external  {
        receiver.transfer(_amount);
    }

    function buyEther () external  payable  {
        msg.value;
        address(this).balance;
    }
}
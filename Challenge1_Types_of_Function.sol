// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract Payable {
    uint public token; 

    function set(uint _value) external {
        token = _value; 
    }

    receive() external payable {
        token = 0;
    }
}

contract Catcher {
    function catchFunction(Payable a) public returns (bool) { 
        // Sending ether to contract Payable
        address payable payableA = payable(address(a));
        return payableA.send(2 ether);
    }
}

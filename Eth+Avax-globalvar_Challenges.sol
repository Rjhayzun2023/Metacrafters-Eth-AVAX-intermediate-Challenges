// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MessageContextExample {
    address public sender;
    uint256 public gasPrice;
    uint256 public gasLimit;
    uint256 public value;
    bytes public data;

    event MessageContextInfo(
        address indexed sender,
        uint gasPrice,
        uint gasLimit,
        uint value,
        bytes data
    );

    function getMessageContext() public payable {
        sender = msg.sender;
        gasPrice = tx.gasprice;
        gasLimit = gasleft();
        value = msg.value;
        data = msg.data;

        emit MessageContextInfo(sender, gasPrice, gasLimit, value, data);
    }
}

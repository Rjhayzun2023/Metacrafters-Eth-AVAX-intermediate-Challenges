// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract EventContract {
    event Event1(address indexed user, uint256 value);
    event Event2(string indexed eventName, uint256 indexed eventId);
    event Event3(uint256 indexed timestamp);

    function triggerEvents() public {
        emit Event1(msg.sender, 123);
        emit Event2("ExampleEvent", 456);
        emit Event3(block.timestamp);
    }
}

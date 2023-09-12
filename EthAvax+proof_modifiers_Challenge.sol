// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;


contract Challenges {

    uint number;
    address admin;
    string name;

    constructor () {
        admin = msg.sender;
    }

    modifier varAdmin {
        require (admin == msg.sender, "you dont have access to these function, please call your local admin." );
        _;
    }
    
    function willSet(uint _a, string memory _b) public varAdmin{
        number = _a;
        name = _b;
    }
    

    function getName() public view varAdmin returns(string memory) {
        return name;
    }

    function getNumber() public view varAdmin returns(uint) {
        return number;
    }
}
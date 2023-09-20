// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Define an abstract contract
abstract contract MyAbstractContract {
    uint256 public abstractValue;

    function abstractFunction() public virtual returns (uint256);
}

// Define an interface
interface MyInterface {
    function interfaceFunction() external view returns (string memory);
}

// Implement the abstract contract and interface in a single smart contract
contract MyContract is MyAbstractContract, MyInterface {
    constructor(uint256 _initialValue, string memory _message) {
        abstractValue = _initialValue;
        contractMessage = _message;
    }

    // Implement the abstract function
    function abstractFunction() view public override returns (uint256) {
        return abstractValue * 2;
    }

    // Implement the interface function
    function interfaceFunction() external view override returns (string memory) {
        return contractMessage;
    }

    string public contractMessage;
}

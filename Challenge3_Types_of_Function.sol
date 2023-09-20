// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract MathOperations {
    // A state variable to store the result
    uint256 public result;

    // A view function to get the current result
    function getResult() public view returns (uint256) {
        return result;
    }

    // A pure function to add two numbers without changing state
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // A pure function to subtract two numbers without changing state
    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        require(a >= b, "Subtraction underflow");
        return a - b;
    }

    // A pure function to multiply two numbers without changing state
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    // A pure function to divide two numbers without changing state
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Division by zero");
        return a / b;
    }
}

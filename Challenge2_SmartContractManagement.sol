// SPDX-License-Identifier: MIT
// Compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

//Challenge 2

contract ContractA {
    //variables
    string public tokenName;
    string public abbrv;
    uint public totalSupply;

    function setVars(string memory _tokenName, string memory _abbrv, uint _totalSupply) external payable  {
        tokenName = _tokenName;
        abbrv = _abbrv;
        totalSupply = _totalSupply;
    }
}

contract ContractB {
        //variables
    string public tokenName;
    string public abbrv;
    uint public totalSupply;

    function setVars(address _contractName, string memory _tokenName, string memory _abbrv, uint _totalSupply) external payable {
        (bool success, bytes memory data) = _contractName.delegatecall(
            abi.encodeWithSignature("setVars(string,string,uint256)", _tokenName, _abbrv, _totalSupply)
        );
        require(success, "Delegatecall failed");
    }
}
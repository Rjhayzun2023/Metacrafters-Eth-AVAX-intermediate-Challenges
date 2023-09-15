// SPDX-License-Identifier: MIT
// Compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Challenge1 {

    //Storage
    struct RacingCar {
        string brand;
        string color;
        uint dateModel;
    }
    RacingCar[] public cars;
    mapping (address => RacingCar[]) public Value;

    function challengeOne() external  {
        RacingCar memory randomcar = RacingCar("formula1", "vinyl1", 2023);
        cars.push(randomcar);
    }
    
    //Memory
    function getCarBrand(string memory _brand) external pure returns (string memory) {
        string memory brand = _brand;
        return brand;
    }
}

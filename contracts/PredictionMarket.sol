pragma solidity ^0.5.0;

import "./StakingToken.sol";


contract PredictionMarket {

    StakingToken public stakingToken;


    constructor (address _stakingTokenAddress) public {
        //require(_stakingToken != 0x0);
        stakingToken = StakingToken(_stakingTokenAddress);  // Create object of StakingToken.sol
    } 


    function testFunc(address to, uint256 value) public returns (bool) {
        return true;
    }

}

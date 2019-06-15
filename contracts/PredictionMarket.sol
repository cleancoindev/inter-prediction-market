pragma solidity ^0.5.0;

import "./StakingToken.sol";


contract PredictionMarket {


    struct PredictionTopic {
        string memory title;
        string memory description;
        uint stakingPrice;  // Define price of staking token which need to stake for topic
    }
    

    struct Participant {
        address addr;
        uint stakingTokenBalance;  // Balance of staking token
    }
    


    StakingToken public stakingToken;


    constructor (address _stakingTokenAddress) public {
        //require(_stakingToken != 0x0);
        stakingToken = StakingToken(_stakingTokenAddress);  // Create object of StakingToken.sol
    } 


    /* @dev Transfer staking token when participants join some prediction of topic */
    function transferStakingToken(address _stakingTokenAddress, uint _predictionContentId, address _participant, uint _amount) public returns (bool) {
        emit TransferStakingToken(_stakingTokenAddress, _predictionContentId, _participant, _amount);
    }


    

}

pragma solidity ^0.5.0;

import "./StakingToken.sol";


contract PredictionMarket {

    uint predictionTopicId;
    uint participantId;

    struct PredictionTopic {
        string title;
        string description;
        uint stakingPrice;  // Define price of staking token which need to stake for topic
    }
    PredictionTopic[] public predictionTopics;
    

    struct Participant {
        address addr;
        uint stakingTokenBalance;  // Balance of staking token
    }
    Participant[] public participants;


    StakingToken public stakingToken;

    event TransferStakingToken(address stakingToken, uint predictionContentId, address participant, uint amount);


    constructor (address _stakingTokenAddress) public {
        //require(_stakingToken != 0x0);
        stakingToken = StakingToken(_stakingTokenAddress);  // Create object of StakingToken.sol
    } 


    /* @dev Transfer staking token when participants join some prediction of topic */
    function transferStakingToken(address _stakingTokenAddress, uint _predictionContentId, address _participant, uint _amount) public returns (bool) {
        emit TransferStakingToken(_stakingTokenAddress, _predictionContentId, _participant, _amount);
    }


    function createPredictionTopic() public returns (bool res) {
        // in progress
    }    

}

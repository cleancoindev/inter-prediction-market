var PredictionMarket = artifacts.require("./PredictionMarket.sol");
var StakingToken = artifacts.require("./StakingToken.sol");


console.log('=== StakingToken.address ====', StakingToken.address);
// Result： === StakingToken.address ==== 0x42043DC70D8738E1f6dB06627eBC53e3902C07fD


module.exports = function(deployer) {
    return deployer.then(() => {
        return deployer.deploy(
            PredictionMarket,
            StakingToken.address  // Using as argument of constructor of Gamification.sol
        );
    });
};

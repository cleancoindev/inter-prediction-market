var PredictionMarket = artifacts.require("./PredictionMarket.sol");

module.exports = function(deployer) {
  console.log(deployer);
  deployer.deploy(PredictionMarket);
};
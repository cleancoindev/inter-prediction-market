var StakingToken = artifacts.require("./StakingToken.sol");

module.exports = function(deployer) {
  console.log(deployer);
  deployer.deploy(StakingToken);
};
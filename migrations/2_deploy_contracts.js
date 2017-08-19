var ConvertLib = artifacts.require("./ConvertLib.sol");
var EventManager = artifacts.require("./EventManager.sol");

module.exports = function(deployer) {
  // deployer.deploy(ConvertLib);
  // deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(EventManager);
};

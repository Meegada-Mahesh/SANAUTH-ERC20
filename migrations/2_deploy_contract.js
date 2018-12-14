var ERC20 = artifacts.require("SANA.sol");
var Airdrop = artifacts.require("Airdrop.sol");

module.exports = function(deployer) {
    deployer.deploy(ERC20);
    deployer.deploy(Airdrop);
}
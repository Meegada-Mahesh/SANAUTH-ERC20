var Owner = "YOUR_OWNER_ADDRESS"; // CHOOSE ANY ERC20 ADDRESS
var Admin = "YOUR_ADMIN_ADDRESS"; // CHOOSE ANY ERC20 ADDRESS
var Airdrop = artifacts.require("./Airdrop.sol");
var BaseToken = artifacts.require("./BaseToken.sol");
var SafeMath = artifacts.require("./SafeMath.sol");
var Token = artifacts.require("./Token.sol");

module.exports = function(deployer){
    deployer.deploy(Airdrop,Owner);
    deployer.deploy(BaseToken);
    deployer.deploy(SafeMath);
    deployer.deploy(Token,Admin);
}

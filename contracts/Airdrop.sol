pragma solidity ^0.4.24;

import "./Token.sol";

contract Airdrop {

    address public owner;
    Token public mytoken;

    constructor(address tokenAddress) public {
        owner = msg.sender;
        mytoken = Token(tokenAddress);
    }

    modifier onlyOwner()  {
        require(msg.sender == owner,"Only owner is allowed to call this.");
        _;
    }

    function transferOwnership(address newOwner) public onlyOwner {

        if (newOwner != address(0)) {
            owner = newOwner;
        }
    }

    function airdrop (address airdropAddress, address[] airDropDesinationAddress, uint[] amounts) 
        public onlyOwner{

        for( uint i = 0 ; i < airDropDesinationAddress.length ; i++ ) {
            //ERC20Interface(contractObj).transferFrom(tokenRepo, airDropDesinationAddress[i], amounts[i]);
            mytoken.transferFrom(airdropAddress, airDropDesinationAddress[i], amounts[i]);
            //mytoken.transfer(airDropDesinationAddress[i], amounts[i]);
        }
    }
}
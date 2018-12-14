pragma solidity ^0.4.24;

import "./../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

// File: contracts/BasicToken.sol

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract SANA is StandardToken {

  string public constant name = "SANA"; //
  string public constant symbol = "SANA"; //
  uint8 public constant decimals = 18; //

  uint256 public constant INITIAL_SUPPLY = 198000000 * (10 ** uint256(decimals));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }

}

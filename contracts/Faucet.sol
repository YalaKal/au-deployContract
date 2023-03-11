// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.18;

contract Faucet {

  constructor() {
    
  }

  function withdraw(uint _amount) public {
    require(_amount < 100000000000000000);
    payable(msg.sender).transfer(_amount);
  }

  // fallback functions
  receive() external payable {}
  fallback() external payable {}
}
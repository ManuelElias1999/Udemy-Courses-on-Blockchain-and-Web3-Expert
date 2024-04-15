// SPDX-License-Identifier: MIT

//version
pragma solidity ^0.8.4;

import "./ERC-20.sol";

contract customERC20 is ERC20 {
    
    // Constructor del Smart Contract
    constructor() ERC20("Manu", "Ma") {}
    
    function  createTokens() public {
        _mint(msg.sender, 1000);
    }

 }
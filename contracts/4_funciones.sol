// SPDX-License-Identifier: MIT

//version
pragma solidity ^0.8.4;


contract functions {
    //funciones de tipo Pure
    function getNume() public pure returns(string memory) {
        return "Manu";
    }

    // Funciones tipo View
    uint256 x = 100;
    function getNumber() public view returns(uint256) {
        return x*2;
    } 
}
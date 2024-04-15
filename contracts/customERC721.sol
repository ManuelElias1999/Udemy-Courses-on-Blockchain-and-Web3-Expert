// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


import "@openzeppelin/contracts@4.5.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract erc721 is ERC721{ 

    // Contadores para los IDs de los NFTs
    using Counters for Counters.Counter;
    Counters.Counter private _tokensIds;

    // constructor del Smart Contract
    constructor (string memory _name, string memory _symbol) ERC721 (_name, _symbol) {}

    // Envio de NFTs
    function sendNFT (address _account) public {
        _tokensIds.increment (); // incrementa en 1 los _tokensIds
        uint256 newItemId = _tokensIds.current(); // .current nos devuelve el actual token id
        _safeMint(_account, newItemId);
    }


}
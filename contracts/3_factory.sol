// SPDX-License-Identifier: MIT

//version
pragma solidity ^0.8.4;

contract Padre {

    // Almacenamiento de la informacion del Factory
    mapping(address => address) public personal_contract;

    // Emsiion de los nuevos smart contracts
    function Factory () public {
        address addr_personal_contract = address(new hijo(msg.sender, address(this)));
        personal_contract[msg.sender] == addr_personal_contract;
    }

}

contract hijo {

    // Estructura de datos del propietario
    Owner public propietario;
    struct Owner {
        address _owner;
        address _smartcontractPadre;
    }

    // Datos recibido al nuevo smart contract
    constructor (address _account, address _accountSC){
        propietario._owner = _account;
        propietario._smartcontractPadre = _accountSC;
    }

}
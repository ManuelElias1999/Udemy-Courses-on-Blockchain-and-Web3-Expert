// SPDX-License-Identifier: MIT

//version
pragma solidity ^0.8.4;

contract Food {

    // Estructura de datos
    struct dinnerPlate {
        string name;
        string ingredients;
    }

    // Menu del dia
    dinnerPlate [] menu;

    // Creacion de un nuevo menu
    function newMenu(string memory _name, string memory _ingredients) internal {
        menu.push(dinnerPlate(_name, _ingredients));
    } 

}

contract Hamburger is Food {

    address public owner;

    constructor () {
        owner = msg.sender;
    }

    // Cocinar una hamburguesa desde el Smart Contract principal
    function doHamburger(string memory _ingredients, uint _uint) external {
        require (_uint <= 5, "Ups, no puedes pedir tantas hamburguesas");
        newMenu("Hamburger", _ingredients);
    }

    // Modifier permitir el acceso unicamente al owner y solo al owner
    modifier onlyOwner() {
        require (owner == msg.sender, "No tienes permiso para ejecutar esta funcion");
        _;
    }

    // Restriccion a la ejecucion de solo el owner
    function hashPrivateNumber(uint _number) public view onlyOwner returns (bytes32) {
        return (keccak256(abi.encodePacked(_number)));
    }

}
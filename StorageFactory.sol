// SPDX-License-Identifier: MIT

// Created by Mahadevan

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage{

    //Creating an array

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {

        //Getting a contract and pushing it in an simpleStorageArray

        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);

    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {

        //address
        //ABI - Application Binary Interface

        //SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);

    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {

        //SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
    }
}

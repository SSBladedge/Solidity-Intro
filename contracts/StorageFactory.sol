//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract storageFactory {
    SimpleStorage[] public storageArray;

    function createSimpleStorage() public {
        SimpleStorage newStorage = new SimpleStorage();
        storageArray.push(newStorage);
    }
}

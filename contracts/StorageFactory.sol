//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract storageFactory {
    SimpleStorage[] public storageArray;

    function createSimpleStorage() public {
        SimpleStorage newStorage = new SimpleStorage();
        storageArray.push(newStorage);
    }

    function sfStore(uint32 _index, uint32 _number) public {
        SimpleStorage simpleStorage = SimpleStorage(
            address(storageArray[_index])
        );
        simpleStorage.storeNum(_number);
    }

    function sfGet(uint32 _index) public view returns (uint32) {
        SimpleStorage simpleStorage = SimpleStorage(
            address(storageArray[_index])
        );

        return simpleStorage.getNum();
    }
}

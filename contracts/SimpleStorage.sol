//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract SimpleStorage {
    uint32 stNum;

    struct People {
        string name;
        uint32 number;
    }

    People[] public persons;

    mapping(string => uint32) public getPersonNumber;

    function storeNum(uint32 _stNum) public {
        stNum = _stNum;
    }

    function getNum() public view returns (uint32) {
        return stNum;
    }

    function addPeople(string memory person_name, uint32 person_number) public {
        persons.push(People(person_name, person_number));

        getPersonNumber[person_name] = person_number;
    }
}

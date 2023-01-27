//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract SimpleStorage {
    uint32 stNum;

    struct People {
        string name;
        uint32 number;
    }

    People[] public persons;

    mapping(string => uint32) public getNumber;

    function storeNumber(uint32 _stNum) public {
        stNum = _stNum;
    }

    function retrieveNumStr() public view returns (uint32) {
        return stNum;
    }

    function addPeople(string memory person_name, uint32 person_number) public {
        persons.push(People(person_name, person_number));

        getNumber[person_name] = person_number;
    }
}

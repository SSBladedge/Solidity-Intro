//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;


contract FundMe {
    mapping(address => uint256) public amountFunded2Address;

    function fund() public payable {
        amountFunded2Address[msg.sender] += msg.value;
    }
}

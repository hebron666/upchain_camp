// 使用证书
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Counter {
    uint public counter;

    constructor(uint initValue){
        counter = initValue;
    }

    function count() public{
        counter = counter + 1;
    }

    function add(uint someNumber) public{
        counter = counter + someNumber;
    }

}
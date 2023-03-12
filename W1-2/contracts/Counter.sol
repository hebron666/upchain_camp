// 使用证书
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "hardhat/console.sol";

error NotOwner();


contract Counter {
    uint public counter;
    address  owner;
    constructor(uint initValue){
        counter = initValue;
        owner  = msg.sender;

    }

    function count() public {
        counter = counter + 1;
        console.log('counter',counter);

    }

    function add(uint someNumber) public onlyOwner{
        counter = counter + someNumber;
    }
    

    modifier onlyOwner(){
         if (msg.sender != owner) {
            revert NotOwner();
        }
        _; // 执行函数代码

    }

}
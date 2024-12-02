// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

contract TheSmartMoneyImplementation {

    uint public SaldoAnda;
    address public pengirim;
    address payable public penerima;

    receive() external payable { 
        SaldoAnda = msg.value;
        pengirim = msg.sender;
    }

    // function deposit () public payable {
    //     SaldoAnda = msg.value;
    //     pengirim = msg.sender;
    // }

    function withdrawAll (address payable _penerima) public payable{
        penerima = _penerima;
        penerima.transfer(SaldoAnda);
    }
}
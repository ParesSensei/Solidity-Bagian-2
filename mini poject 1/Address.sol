//SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.14;

contract MyAddress {

    address public Myaddress;

    function setMyAdress (address _myadress) public {
        Myaddress = _myadress;
    }

    function Mybalance () public view returns(uint) {
        return Myaddress.balance;
    }
}
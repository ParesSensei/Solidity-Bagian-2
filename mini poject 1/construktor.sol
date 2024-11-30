// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

contract Constructor {

    address public Myadress;

    constructor(address _someAddress) {
        Myadress = _someAddress;
    }

    function setMyaddress(address _myAddress) public {
        Myadress = _myAddress;
    }

    function setMyaddressToMsgSender() public {
        Myadress = msg.sender;
    }
}
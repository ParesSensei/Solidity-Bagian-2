// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

contract TheBlockchainMessenger {

    uint public changeCounter;

    address public owner;

    string public theMassenger;

    constructor() {
        owner = msg.sender;
    }

    function updateTheMessage (string memory _newMassage) public {
        if (msg.sender == owner) {
            theMassenger = _newMassage;
            changeCounter++;
        }
    }
}
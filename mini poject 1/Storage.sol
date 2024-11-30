// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract  Storage{

    uint8 public a = 4; //1 byte
    uint16 public b = 51; //2 byte
    address public c = 0x22E3643eFcF1761095E18f3b008a4a312D9d8768; // 20 byte
    bool public d = true; // 1 byte
    uint64 public e = 2; // 8 byte
    // 32 byte, all stored in slot 0
    // '0x0000000000000002 01 22e3643efcf1761095e18f3b008a4a312d9d8768 0033 04'

    uint256 public f = 22; // 32 byte ->slot 1
    //'0x0000000000000000000000000000000000000000000000000000000000000016'

    uint8 public g = 44; // 1 byte ->slot 2
    //'0x000000000000000000000000000000000000000000000000000000000000002c'

    uint256 public h = 789;  // 32 byte -> slot 3
    // '0x0000000000000000000000000000000000000000000000000000000000000315'
}
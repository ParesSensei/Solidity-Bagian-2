// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

contract SampleFallback {

    uint public lastValueSent;

    string public LastFunctionCalled;

    receive() external payable {
        lastValueSent = msg.value;
        LastFunctionCalled = "receive";
    }

    fallback() external payable { 
        lastValueSent = msg.value;
        LastFunctionCalled = "fallback";
    }
}
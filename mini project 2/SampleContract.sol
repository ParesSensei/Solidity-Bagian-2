// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.14;

contract SampleContract {

    string public myString;

    function setMystring (string memory _mystring) public payable {
        if (msg.value == 1 ether){
        myString = _mystring;
        } else {
            payable(msg.sender).transfer(msg.value);
        }
    }
}
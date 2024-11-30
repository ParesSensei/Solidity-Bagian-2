// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.14;

contract Mycontract {

    string public Mystring = "hello world";
    bytes public Mybytes = "hello world";

    function setMstring (string memory _mystring) public {
        Mystring = _mystring;
    }

    function comparetwostring (string memory _mystring) public view returns (bool) {
        return keccak256(abi.encodePacked(Mystring)) == keccak256(abi.encodePacked(_mystring));
    }

    function getbyteslength() public view returns (uint) {
        return Mybytes.length;
    }
}
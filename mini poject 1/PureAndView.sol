// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

contract PureFunction {
    uint256 public angkaSaya = 311;

       function tambah(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}


contract View is PureFunction {

    function lihatAngka () public view returns (uint256) {
        return angkaSaya;
    }
}

contract ExamplePureView {

    uint public myStrorageVariable;

    function setMystrorageVariable (uint _newVar) public returns (uint) {
        myStrorageVariable = _newVar;
        return myStrorageVariable;
    }
}
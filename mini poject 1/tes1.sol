// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.14;

contract MyContract {

    string public OurString = " hallo dunia";

    function update (string memory _updateString) public {
        OurString = _updateString;
    }
}


contract MyBoolean{

    bool public MyBool = true;

    function setBolean ( bool _setBolean ) public {
        MyBool = _setBolean;
    }

}

contract MyUint {

    uint256 public myUint;

    function setUint (uint _masukkanAngka) public {
        myUint = _masukkanAngka;
    }

    // function LihatUint () public view returns (uint256) {
    //     return myUint;
    // }
    
}
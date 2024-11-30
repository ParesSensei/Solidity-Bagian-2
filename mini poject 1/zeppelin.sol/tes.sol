//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openseppelin/contracts";

contract DigitalinAjah is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("DigitalimAjah", "DTL")
        Ownable(initialOwner)
        ERC20Permit("DigitalinAjah")
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MetanToken is ERC20 {

    constructor() ERC20("Metan Evolutions", "METAN") {
        _mint(msg.sender,  1e26);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/utils/Address.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";


contract MetanToken is ERC20Capped, ERC20Burnable, Ownable {

    using SafeMath for uint256;
    uint256 maxSupply = 10**26;
    
    constructor()
        Ownable()
        ERC20Capped(maxSupply)
        ERC20("Metan Evolutions", "METAN")
    {
        ERC20._mint(_msgSender(), maxSupply);
    }

    function _mint(address account, uint256 amount) internal virtual override (ERC20, ERC20Capped) {
        ERC20Capped._mint(account, amount);
    }
    function getTotalBurntAmount() external view returns (uint256 _amount) {
        return maxSupply.sub(totalSupply());
    }
}

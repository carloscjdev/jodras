// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract Jodras is ERC20, Ownable {
    function decimals() public view virtual override returns (uint8) {
        return 0;
    }

    constructor(uint256 initialSupply) ERC20("Jodras", "JDR") {
        _mint(msg.sender, initialSupply);
    }

     function mint(address destination, uint256 amount) public onlyOwner {
        _mint(destination, amount);
    }

    function destroy(address destination, uint256 amount) public onlyOwner {
        _burn(destination, amount);
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    constructor() ERC20("Degen", "DGN") {}

    function generateTokens(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    function transferTokens(address recipient, uint256 amount) public returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }

    function transferTokensFrom(address from, address recipient, uint256 amount) public returns (bool) {
        _transfer(from, recipient, amount);
        _approve(from, msg.sender, allowance(from, msg.sender) - amount);
        return true;
    }

    function authorize(address spender, uint256 amount) public returns (bool) {
        _approve(msg.sender, spender, amount);
        return true;
    }

    function generalitems() external pure returns (string memory) {
    console.log("The following general items are available:");
    console.log("Item A: Notebook");
   
    return "The following general items are available:\nItem A: Notebook:";
}

    function redeemTokens(uint8 _userSelection) external payable returns (bool) {
        if (_userSelection == 1) {
            require(balanceOf(msg.sender) >= 75, "Insufficient Degen Tokens");
            approve(msg.sender, 75);
            transferFrom(msg.sender, owner(), 75);
            console.log("You have successfully redeemed for medicine");
            return true;
        }
    
        else {
            console.log("That is not a valid choice");
            return false;
        }
    }

    function destroyTokens(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}

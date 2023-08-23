## DegenToken Solidity Contract

This is a Solidity smart contract for the DegenToken ERC20 token, which is used to manage and interact with a decentralized token with certain functionalities. The contract is built on the Ethereum blockchain and utilizes the OpenZeppelin library for ERC20 token standard implementation and Ownable access control.

## Contract Details

Name: DegenToken
Symbol: DGN
Functionality
generateTokens
This function allows the owner of the contract to generate and mint new Degen tokens to a specified account.

### transferTokens

Transfers a specified amount of Degen tokens from the caller's address to a specified recipient.

### transferTokensFrom

Transfers a specified amount of Degen tokens from one address (with approval) to another address.

### authorize

Allows the caller to approve another address to spend a certain amount of Degen tokens on their behalf.

### generalitems

A view function that returns a list of general items available. In this version of the contract, it only logs an example item.

### redeemTokens

Allows token holders to redeem Degen tokens for certain items. Currently, only redeeming for medicine is supported, provided the user has enough tokens.

### destroyTokens

Burns a specified amount of Degen tokens from the caller's address.

## Usage

Deploy the contract to the Ethereum network.
As the contract owner, use the generateTokens function to mint new Degen tokens.
Token holders can use the transferTokens function to send tokens to other addresses.
Token holders can use the authorize function to approve another address to spend tokens on their behalf.
Use the generalitems function to view available general items.
Token holders can use the redeemTokens function to redeem tokens for certain items.
Use the destroyTokens function to burn tokens.

## author
ABHAYJEET SINGH

## LICENCE
This project is under MIT licence

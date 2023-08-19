# avx4.sol
DegenToken Smart Contract
DegenToken is an Ethereum-based ERC20 token contract that allows token creation, transfer, redemption, and burning.

Features
Mint new Degen tokens for distribution.
Transfer tokens between addresses.
Redeem tokens for specific grocery items.
Burn tokens to reduce the token supply.
Functions
mint(address recipient, uint256 amount): Mint tokens for recipients.
transfer(address recipient, uint256 amount): Transfer tokens to another address.
transferFrom(address from, address recipient, uint256 amount): Transfer tokens with allowance checks.
approve(address spender, uint256 amount): Approve token spending by an address.
groceryitems(): Get available grocery items for purchase.
reedemTokens(uint8 _userSelection): Redeem tokens for specific items.
burn(uint256 amount): Burn tokens to reduce supply.
Usage
Deploy the contract on Ethereum.
Mint initial tokens using mint function.
Transfer tokens or redeem items using respective functions.
Burn tokens when needed.
Disclaimer
This contract is for educational purposes. Audit before deploying to production.

License
MIT License

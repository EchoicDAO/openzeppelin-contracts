// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../token/ERC20/extensions/ERC20FlashMint.sol";

contract ERC20FlashMintMock is ERC20FlashMint {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals,
        address initialAccount,
        uint256 initialBalance
    ) ERC20(name, symbol, decimals) {
        _mint(initialAccount, initialBalance);
    }
}

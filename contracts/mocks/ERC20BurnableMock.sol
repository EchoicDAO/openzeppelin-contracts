// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../token/ERC20/extensions/ERC20Burnable.sol";

contract ERC20BurnableMock is ERC20Burnable {
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

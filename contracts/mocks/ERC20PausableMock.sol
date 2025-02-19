// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../token/ERC20/extensions/ERC20Pausable.sol";

// mock class using ERC20Pausable
contract ERC20PausableMock is ERC20Pausable {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals,
        address initialAccount,
        uint256 initialBalance
    ) ERC20(name, symbol, decimals) {
        _mint(initialAccount, initialBalance);
    }

    function pause() external {
        _pause();
    }

    function unpause() external {
        _unpause();
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) public {
        _burn(from, amount);
    }
}

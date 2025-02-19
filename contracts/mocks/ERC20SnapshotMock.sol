// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../token/ERC20/extensions/ERC20Snapshot.sol";

contract ERC20SnapshotMock is ERC20Snapshot {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals,
        address initialAccount,
        uint256 initialBalance
    ) ERC20(name, symbol, decimals) {
        _mint(initialAccount, initialBalance);
    }

    function snapshot() public {
        _snapshot();
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
    }
}

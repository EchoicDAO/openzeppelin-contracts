// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../token/ERC20/extensions/ERC20Capped.sol";

contract ERC20CappedMock is ERC20Capped {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 cap
    ) ERC20(name, symbol, decimals) ERC20Capped(cap) {}

    function mint(address to, uint256 tokenId) public {
        _mint(to, tokenId);
    }
}

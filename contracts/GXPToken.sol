// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract GXPToken is ERC20Votes {
    uint256 public supply = 1000000000000000000000000000; // Token Supply: 1 billion 

    // ERC20 Permit allows more DAO-related functionalities than a regular ERC20
    // For example, it allows for the creation of snapshots of the tokens users have at a certain block
    constructor() ERC20("GXPToken", "GXP") ERC20Permit("GXPToken") {
        _mint(msg.sender, supply);
    }

    // The following functions are overrides required by Solidity

    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount) internal override(ERC20Votes) {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount) internal override(ERC20Votes) {
        super._burn(account, amount);
    }
}

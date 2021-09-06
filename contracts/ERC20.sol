// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.7.5;

import './AbstractERC20.sol';

contract ERC20 is AbstractERC20 {
    string public constant override name = 'Token';
    string public constant override symbol = 'TKN';
    uint8 public constant override decimals = 18;

    constructor(uint256 _totalSupply) {
        _init(name);
        _mint(msg.sender, _totalSupply);
    }

    /**
     * @dev This function should be called on the forked chain to prevent
     * replay attacks
     */
    function updateDomainSeparator() external {
        _init(name);
    }
}

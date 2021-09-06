// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.7.5;

contract Exchange {
    address public owner;

    constructor() {
        owner = msg.sender;
    }
}

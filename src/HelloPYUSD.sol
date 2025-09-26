// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ERC721} from "solmate/tokens/ERC721.sol";

contract HelloPYUSD is ERC721 {
    uint256 public totalIssued;

    constructor() {
        name = "HelloPYUSD";
        symbol = "HIPYPL";
    }

    function mint() external {
        _mint(msg.sender, ++totalIssued);
    }

    function tokenURI(uint256) public pure override returns (string memory) {
        return "";
    }
}

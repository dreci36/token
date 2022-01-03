// SPDX-License-Identifier: Unlicensed
pragma solidity 0.8.4;

import "./ITaxHandler.sol";

contract ZeroTaxHandler is ITaxHandler {
    function getTax(
        address benefactor,
        address beneficiary,
        uint256 amount
    ) external pure override returns (uint256) {
        // Silence a few warnings. This will be optimized out by the compiler.
        benefactor;
        beneficiary;
        amount;

        return 0;
    }
}
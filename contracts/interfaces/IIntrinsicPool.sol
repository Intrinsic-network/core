// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IIntrinsicPoolImmutables.sol';
import './pool/IIntrinsicPoolState.sol';
import './pool/IIntrinsicPoolDerivedState.sol';
import './pool/IIntrinsicPoolActions.sol';
import './pool/IIntrinsicPoolOwnerActions.sol';
import './pool/IIntrinsicPoolEvents.sol';

/// @title The interface for a Intrinsic Pool
/// @notice A Intrinsic pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IIntrinsicPool is
    IIntrinsicPoolImmutables,
    IIntrinsicPoolState,
    IIntrinsicPoolDerivedState,
    IIntrinsicPoolActions,
    IIntrinsicPoolOwnerActions,
    IIntrinsicPoolEvents
{

}

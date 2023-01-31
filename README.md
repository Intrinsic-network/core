# Intrinsic

This repository contains the core smart contracts for the Intrinsic Protocol.
For higher level contracts, see the [intrinsic-periphery](https://github.com/Intrinsic-network/intrinsic-periphery)
repository.

## Bug bounty

This repository is subject to the Intrinsic bug bounty program, per the terms defined [here](./bug-bounty.md).

## Local deployment

In order to deploy this code to a local testnet, you should install the npm package
`@intrinsic/core`
and import the factory bytecode located at
`@intrinsic/core/artifacts/contracts/IntrinsicFactory.sol/IntrinsicFactory.json`.
For example:

```typescript
import {
  abi as FACTORY_ABI,
  bytecode as FACTORY_BYTECODE,
} from '@intrinsic/core/artifacts/contracts/IntrinsicFactory.sol/IntrinsicFactory.json'

// deploy the bytecode
```

This will ensure that you are testing against the same bytecode that is deployed to
mainnet and public testnets, and all Intrinsic code will correctly interoperate with
your local deployment.

## Using solidity interfaces

The Intrinsic interfaces are available for import into solidity smart contracts
via the npm artifact `@intrinsic/core`, e.g.:

```solidity
import '@intrinsic/core/contracts/interfaces/IIntrinsicPool.sol';

contract MyContract {
  IIntrinsicPool pool;

  function doSomethingWithPool() {
    // pool.swap(...);
  }
}

```

## Licensing

The primary license for Intrinsic Core is the Business Source License 1.1 (`BUSL-1.1`), see [`LICENSE`](./LICENSE).

### Exceptions

- All files in `contracts/interfaces/` are licensed under `GPL-2.0-or-later` (as indicated in their SPDX headers), see [`contracts/interfaces/LICENSE`](./contracts/interfaces/LICENSE)
- Several files in `contracts/libraries/` are licensed under `GPL-2.0-or-later` (as indicated in their SPDX headers), see [`contracts/libraries/LICENSE_GPL`](contracts/libraries/LICENSE_GPL)
- `contracts/libraries/FullMath.sol` is licensed under `MIT` (as indicated in its SPDX header), see [`contracts/libraries/LICENSE_MIT`](contracts/libraries/LICENSE_MIT)
- All files in `contracts/test` remain unlicensed.

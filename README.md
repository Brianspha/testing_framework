
# Testing Framework for Plaza

For Westend Asset Hub (rpc: https://westend-asset-hub-eth-rpc.polkadot.io ) which now supports EVM-compatible smart contracts, we would like to ensure that the most commonly developer tooling works out of the box. The list below is non-exhaustive but is our scope for now as these are the most important for new developers wanting to work with SCs on Polkadot. Once these have automated testing in place, we can move onto the hardhat plugin. 

- [ ] web3.js
- [ ] ethers.js

Since these are libraries it would be good to start out with some research on how to approach testing for these (most common use-cases in the form of test dapps- see https://github.com/MetaMask/test-dapp for inspiration). There may be some overlap with the already existing RPC compatibility tests https://github.com/bee344/evm-tests (from @IkerAlus 's team) so we'll want to make sure there isn't any duplicated work here and perhaps it's possible to leverage some of their work.

Deliverables here would be a test dapp for both web3.js and ethers.js, which is able to run automated tests on to ensure compatibility.
## Requirements

The primary objective is to develop and implement automated compatibility testing for **web3.js** and **ethers.js** with Westend Asset Hub's EVM-compatible smart contracts.

### Key Deliverables

- Develop test DApps for **web3.js** and **ethers.js**.
- Create automated test suites for both libraries.

### Milestones

1. Research and planning.
2. Development of test DApps.
3. Implementation of automated tests.
4. Integration and optimization of the testing framework.

---

## Table of Contents

- [Testing Framework for Plaza](#testing-framework-for-plaza)
  - [Requirements](#requirements)
    - [Key Deliverables](#key-deliverables)
    - [Milestones](#milestones)
  - [Table of Contents](#table-of-contents)
  - [Research and Planning](#research-and-planning)
    - [Key Insights from Research](#key-insights-from-research)
      - [CLI Integration](#cli-integration)
      - [Extending Functionality](#extending-functionality)
      - [Compiler Modifications](#compiler-modifications)
    - [Planning](#planning)
  - [Development of Test DApps](#development-of-test-dapps)
  - [Implementation of Automated Tests](#implementation-of-automated-tests)
  - [Integration and Optimization](#integration-and-optimization)

---

## Research and Planning

The research phase focuses on conducting a market analysis of existing tools and frameworks in other ecosystems to derive insights and inspiration for the development of this testing framework. 

The current emphasis is on adapting [Foundry](https://book.getfoundry.sh/) to work with the [Parity Virtual Machine (PVM)](https://github.com/paritytech/revive/tree/main). This will enable developers to compile smart contracts for the PVM. Much of this work will be inspired by the [Foundry zkSync](https://github.com/matter-labs/foundry-zksync) project.

### Key Insights from Research

Several components need to be developed to adapt Foundry to the PVM:

#### CLI Integration
- New CLI commands will be introduced to support compiling with **revive** or Solidity compatibility for the PVM. 
- Example: [CLI commands in Foundry zkSync](https://github.com/matter-labs/foundry-zksync/blob/main/crates/cli/src/opts/build/zksync.rs).
- These options will be integrated across all Foundry CLI arguments, as shown in the [build options](https://github.com/matter-labs/foundry-zksync/blob/main/crates/cli/src/opts/build/mod.rs).

#### Extending Functionality
- The following areas of Foundry functionality will be extended:
  1. **Compilation**: Adding functionality to build contracts using revive, similar to [this approach in Foundry zkSync](https://github.com/matter-labs/foundry-zksync/blob/main/crates/common/src/compile.rs).
  2. **Contract Verification**: Implementing a verification flow, as seen in [Foundry zkSync’s contract verification module](https://github.com/matter-labs/foundry-zksync/tree/main/crates/verify/src/zksync).
  3. **Testing**: Setting up testing environments, including in-memory nodes, as demonstrated in [this testing utility](https://github.com/matter-labs/foundry-zksync/blob/main/crates/test-utils/src/zksync.rs).
  4. Additional insights will be gathered to understand the purpose of the [zksync folder](https://github.com/matter-labs/foundry-zksync/tree/main/crates/zksync).

#### Compiler Modifications
- The Foundry compiler backend will require updates to support a custom Solidity compiler, similar to zkSync’s **zksolc** implementation.
- Reference: [Compiler adaptations in Foundry zkSync](https://github.com/Moonsong-Labs/compilers).

### Planning

The planning phase will establish a roadmap for integrating the above functionalities into the testing framework.

---

## Development of Test DApps

*(Details to be added based on progress.)*

---

## Implementation of Automated Tests

*(Details to be added based on progress.)*

---

## Integration and Optimization

*(Details to be added based on progress.)*

## Contributions
Since foundry-revive depends heavily on foundry-revive-compiler, contributions require matching branches in both repositories to ensure changes don't break compilation. This applies to any forked foundry repositories used by either project.
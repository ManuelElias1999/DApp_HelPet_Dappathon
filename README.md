# HelPet Platform

HelPet is a decentralized platform that connects animal shelters with donors through blockchain technology, enabling transparent and efficient donations while rewarding contributors with tokens.

## Smart Contracts

The platform consists of four main smart contracts deployed on Base Sepolia testnet:

### TokenHelPet Contract
**Address**: [0x21204D760494c31fe869A8AA97389bf35d426866](https://sepolia.basescan.org/address/0x21204D760494c31fe869A8AA97389bf35d426866)
- ERC20 token used as reward for donations
- Minted when users donate to causes
- Can be redeemed for items/services

### RegisterUsers Contract
**Address**: [0x3D832fF79eab5783D933d348CB5C6e54bf41c600](https://sepolia.basescan.org/address/0x3D832fF79eab5783D933d348CB5C6e54bf41c600)
- Manages user and entity registration
- Only owner can register new users/entities
- Maintains registry of verified users and animal shelters

### FindPet Contract
**Address**: [0x22b15F336927ED999D80e14d51046391FF8ACbfa](https://sepolia.basescan.org/address/0x22b15F336927ED999D80e14d51046391FF8ACbfa)
- Allows entities to post lost pets
- Users can report found pets
- Manages lost and found pet listings

### Donate Contract
**Address**: [0x1234567890123456789012345678901234567890](https://sepolia.basescan.org/address/0xa6C05211B3331167f92A1C53f18b999Ee15Fa20d)
- Manages donations to animal shelters
- Mints HelPet tokens as rewards for donors
- Tracks donation history and statistics
- Allows entities to create donation campaigns

### Redeem Contract
**Address**: [0x8D94F785E28657400d31b2cc3a68404Cd8557B6A](https://sepolia.basescan.org/address/0x8D94F785E28657400d31b2cc3a68404Cd8557B6A)
- Allows entities to create redemption posts for items/services
- Users can redeem items using their HelPet tokens
- Manages inventory and token transfers
- Posts can be closed by creators

## Technologies Used

- **Solidity**: Smart contract development
- **Foundry**: Testing framework and development environment
- **Base**: Layer 2 scaling solution
- **OpenZeppelin**: Smart contract security standards

## Testing

Each contract has its own test file with comprehensive test coverage. The tests verify all main functionalities including:

- User and entity registration
- Token minting and transfers
- Lost pet post creation and management
- Redemption post creation and claiming
- Access control and permissions
- Error handling and edge cases
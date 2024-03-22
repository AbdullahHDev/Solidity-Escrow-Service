<h3 align="left">Solidity-Escrow-Service</h3>
</div>

## About The Project

The Solidity-Escrow-Service provides a reliable way to execute transactions on the Ethereum network. By utilizing a smart contract, buyers and sellers are both able to trade with each other in complete transparency. Funds are safely held and only released upon the fulfillment of agreed terms between buyers and sellers. This not only minimizes the risk associated with financial transactions online but also paves the way for trustless exchanges in a wide array of industries, from digital marketplaces to real estate and beyond.


### Built With

[![RemixIDE][RemixIDE-badge]][RemixIDE-url]
[![Solidity][Solidity-badge]][Solidity-url]




## Getting Started

This section provides guidance on setting up the Solidity-Escrow-Service project locally using RemixIDE. To interact with this smart contract on the Ethereum network, follow these simplified steps.

### Prerequisites

Ensure you have MetaMask installed and set up in your browser to interact with Ethereum networks. You don't need to install any specific software on your machine, as RemixIDE operates entirely in the browser.

### Setup

Follow these steps to get your local development environment running.

1. Visit RemixIDE to start coding in the browser without any installation.
2. Create a new file in RemixIDE called EscrowContract.sol.
3. Copy the Solidity smart contract code provided earlier into EscrowContract.sol.
4. Compile the smart contract using the Solidity compiler in RemixIDE.


### Deployment
To deploy the smart contract to an Ethereum test network, follow these instructions.

1. In RemixIDE, go to the "Deploy & run transactions" tab.
2. Connect your MetaMask wallet to RemixIDE. Make sure you're connected to a test network (e.g., Rinkeby, Ropsten).
3. Select EscrowContract from the list of compiled contracts.
4. Click on "Deploy" to deploy your contract to the test network. MetaMask will ask for confirmation to proceed with the transaction.
5. After the deployment, you can interact with your contract directly from RemixIDE using the deployed contract's address.
6. Remember to test thoroughly before considering deployment to the Ethereum mainnet. This example uses test networks for safety and learning purposes.


## Usage
Here's how this smart contract can be used in real world applications:
### Real Estate Transactions
In real estate, the escrow contract ensures that the property title and funds only change hands when all conditions are met, such as passing inspections or obtaining mortgage approval.

```solidity
// Example: Creating a trade for a real estate transaction
bytes32 tradeId = keccak256(abi.encodePacked(msg.sender, address(this), now));
address payable buyer = msg.sender;
address payable seller = 0xSellerAddress;
uint256 value = 1 ether; // Purchase amount
createTrade(tradeId, buyer, seller, value);
```

### Online Marketplaces
For online marketplaces, the contract can securely hold funds during the shipping process, releasing payment to the seller only once the buyer confirms receipt and satisfaction with the product.
```solidity
// Example: Buyer confirming receipt
releasePayment(tradeId);
```

### Variables and Functions
- `trades` Mapping: Holds the details of all trades. Each trade is identified by a tradeId.
- `Trade` Struct: Contains information about the trade, including the addresses of the buyer and seller, the value of the trade, and its completion status.
- `createTrade` Function: Allows the seller to initiate a new trade by specifying the trade details. The contract verifies that sufficient funds are available and records the trade.
- `releasePayment` Function: Used by the seller to release the funds to themselves once the trade conditions are met. It also marks the trade as complete.



## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b Solidity-Escrow-Service/feature`)
3. Commit your Changes (`git commit -m 'Add a feature'`)
4. Push to the Branch (`git push origin Solidity-Escrow-Service/feature`)
5. Open a Pull Request




## License

Distributed under the MIT License. See `LICENSE.txt` for more information.




## Contact

Abdullah Hussain - A.A.Hussain1@newcastle.ac.uk

Project Link: [https://github.com/AbdullahHDev/Solidity-Escrow-Service](https://github.com/AbdullahHDev/Solidity-Escrow-Service)




## Acknowledgments

* [RemixIDE](https://remix.ethereum.org/)
* [RemixIDE Docs](https://remix-ide.readthedocs.io/en/latest/)
* [Solidity Docs](https://docs.soliditylang.org/en/v0.8.25/)




[RemixIDE-badge]: https://img.shields.io/badge/RemixIDE-20232A.svg?style=for-the-badge&logo=remix&logoColor=61DAFB
[RemixIDE-url]: https://remix.ethereum.org
[Solidity-badge]: https://img.shields.io/badge/Solidity-363636.svg?style=for-the-badge&logo=solidity&logoColor=white
[Solidity-url]: https://soliditylang.org/

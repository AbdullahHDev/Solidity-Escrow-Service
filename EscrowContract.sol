// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Escrow contract
contract Escrow {
  // Mapping of trade IDs to trade details
  mapping(bytes32 => Trade) public trades;

  // Struct to represent a trade
struct Trade {
  // Address of the buyer
  address payable buyer;
  // Address of the seller (change type to "address payable")
  address payable seller;
  // Amount of ether paid by the buyer
  uint256 value;
  // ID of the trade
  bytes32 tradeId;
  // Flag to indicate if the trade is complete
  bool isComplete;
}


  // Function to create a new trade
function createTrade(bytes32 _tradeId, address payable _buyer, address payable _seller, uint256 _value) public payable {
  // Check if the caller is the seller
  if (msg.sender != _seller) revert("Only the seller can create a trade");
  // Check the contract's balance
  if (address(this).balance < _value) revert("Insufficient funds");
  // Check the seller's address

  // Create a new trade with the specified details
  Trade memory trade = Trade(_buyer, _seller, _value, _tradeId, false);
  // Store the trade in the mapping
  trades[_tradeId] = trade;
}


  // Function to release the payment to the seller
function releasePayment(bytes32 _tradeId) public {
  // Get the trade details from storage
  Trade storage trade = trades[_tradeId];
  // Check if the trade is complete
  if (trade.isComplete) revert("Trade already complete");
  // Check if the caller is the seller
  if (msg.sender != trade.seller) revert("Only the seller can release payment");
  // Transfer the payment to the buyer
  bool success = trade.buyer.send(trade.value);
  if (!success) revert("Transfer failed");
  // Mark the trade as complete
  trade.isComplete = true;
}



}
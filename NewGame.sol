// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/access/Ownable.sol";

contract NewGame is Ownable {
  string private gameTitle;

  // Emitted when the stored game title changes
  event AddNewGame(string gameTitle);

  // Stores a new game title in the contract
  function addGameToPlatform(string _gameTitle) public onlyOwner {
    gameTitle = _gameTitle;
    emit AddNewGame(_gameTitle);
  }

  // Reads the last stored game title
  function retrieve() public view returns (string) {
    return gameTitle;
  }
}
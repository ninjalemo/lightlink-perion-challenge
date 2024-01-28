# About this Repository

This repository contains the information regarding @hackathon_ninja's submission for the LightLink Perion challenge.

Both the rewards system document and the presentation used in the video are uploaded, as well as the Solidity code that could be used for the DAO.

# What to Know About These Smart Contracts

There are four contracts:

1. **NewGames.sol**: this contract is an example of what could the DAO vote on. In this case, `addGameToPlatform` receives stores the game name of the next game the users want to be compatible with the gaming platform. As the contract is "Ownable", only the owner of this contract can call the `addGameToPlatform` function. In this case, the owner is going to be the DAO, so only through a process of governance can a new game title be stored.

2. **GXPToken.sol**: the ERC20 token used to vote. It utilizes the ERC20 Permit, which allows more DAO-related functionalities than a regular ERC20. For example, it allows the creation of snapshots of the tokens users have at a certain block to avoid malicious actors from buying before a voting and dumping right after.

3. **DAOGovernor.sol**: to select the new game to be added in the "NewGames.sol" contract, this code offers the logic to go through the process of proposing, voting, queueing and executing the transaction from the DAO.

4. **TimeLock.sol**: when we want a proposal to go through, we need some time so that the users that don't agree with the governance update can get out. So once the proposal passes, it won't go efefctive right away, but it will wait some time. This contract is what allows this functionality.

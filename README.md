# Text Adventure Game Smart Contract

![License](https://img.shields.io/badge/License-MIT-blue.svg)

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Game Description](#game-description)
- [Functions](#functions)
- [How to Use](#how-to-use)
- [License](#license)

## Introduction

Welcome to the Text Adventure Game Smart Contract! This Solidity contract implements a text-based adventure game that takes you on an exciting journey filled with choices and challenges. You will navigate through a gripping storyline, making crucial decisions along the way that will determine your fate.

## Prerequisites

To interact with this smart contract, you will need:

- An Ethereum wallet (e.g., MetaMask) to deploy and interact with the contract on a testnet or the mainnet.
- An IDE or code editor (e.g., Remix) to compile and deploy the smart contract code.
- An Ethereum development environment (e.g., Ganache) for local testing and debugging.

## Game Description

You are a person who has just escaped from prison and is now a fugitive. The police are relentlessly searching for you, and your face is plastered on wanted posters and TV screens across the city. Your only chance of escaping the city is to reach the helipad located at the tallest building.

However, the path to freedom won't be easy. Along the way, you will face various challenges, and the decisions you make will determine whether you succeed or fail.

## Functions

The smart contract provides the following functions:

- `enterinput(uint y) public`: Allows you to enter your choice during the game.
- `Storyline() public`: Starts the game and sets the initial storyline.
- `Storyline2() public`: Presents the first choice in the game - whether to take the bus or steal a vehicle.
- `Storyline3() public`: Handles the consequences of your choice in Storyline2.
- `Storyline4() public`: Presents the next challenge - facing goons on the road and choosing a weapon to fight.
- `Storyline5() public`: Handles the consequences of your weapon choice in Storyline4.
- `Storyline6() public`: Presents the options for vehicles - ATV, LaFerrari, or Bicycle.
- `Storyline7() public`: Handles the consequences of your vehicle choice in Storyline6.
- `Storyline8() public`: Presents the final challenge - reaching the helipad with the chosen vehicle.
- `FINALE() public`: Handles the outcome of your final choice.

## How to Use

1. Clone this repository to your local machine or download the `textgame.sol` file.
2. Open the `textgame.sol` file in your Solidity IDE or Remix.
3. Compile the smart contract and ensure there are no errors.
4. Deploy the contract to your preferred Ethereum network (testnet or mainnet) using your wallet and a suitable gas fee.
5. After deployment, you can interact with the contract using its functions through your Ethereum wallet to play the game.

## Important Note

This smart contract is designed for educational purposes and may not be suitable for use in production systems without additional security measures.

## License

This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the code as per the terms of the license.

**Happy Gaming!** 🎮

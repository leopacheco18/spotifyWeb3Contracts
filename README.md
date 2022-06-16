# Spotify Web 3 Contracts | TobyDev

The frontend-repo is here: https://github.com/leopacheco18/spotifyWeb3

This project try to replicate spotify but with web3 tech. Any artist can upload a new album and this new album will be a Smart Contract and the songs will be NTF's minted from this new smart contract. You can play the songs and also see on OpenSea

### Steps to Run

1. Clone this repository.

`git clone https://github.com/leopacheco18/spotifyWeb3Contracts.git`

2. Open the folder
   
`cd spotifyWeb3Contracts`

3. Install dependencies

`npm install`  
or
`yarn install`  

4. Setup your private keys by renaming `.env.example` to `.env` and add your private keys for:
   1. Your Wallet Address private key.
   2. Mumbai RPC URL you can use Avalanche for this.

5. Run the code:

 `yarn hardhat run scripts/deploy.py`

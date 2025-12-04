# music-blockchain

# 🎵 Decentralized Music Streaming DApp

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Solidity](https://img.shields.io/badge/Solidity-%5E0.8.0-363636)
![IPFS](https://img.shields.io/badge/Storage-IPFS%20(Pinata)-65C2CB)
![Web3](https://img.shields.io/badge/Frontend-Web3.js-F16822)

A decentralized music streaming platform where artists receive **100% instant royalties** and listeners gain verified ownership of tracks. Built with Ethereum Smart Contracts and IPFS for decentralized storage.

## 🚀 Features

* **For Artists:**
    * **Direct Publishing:** Upload MP3 files directly to IPFS (via Pinata) and register metadata on the Blockchain.
    * **Instant Royalties:** Receive payments directly to your wallet the moment a track is purchased. No intermediaries.
    * **Ownership Rights:** Set your own price in ETH.

* **For Listeners:**
    * **Buy Once, Listen Forever:** Purchase tracks using Ether (Sepolia/Local) and verify ownership on-chain.
    * **Token-Gated Streaming:** The "Play" button is only unlocked for verified owners.
    * **Support Creators:** 100% of your payment goes to the artist.

## 🛠 Tech Stack

* **Blockchain:** Ethereum (Sepolia Testnet / Ganache Local)
* **Smart Contract:** Solidity
* **Storage:** IPFS (Pinata Cloud)
* **Frontend:** HTML5, Bootstrap 5, Vanilla JavaScript
* **Web3 Integration:** Web3.js, MetaMask

## 📂 Project Structure

```bash
├── contract/ MusicLite.sol       # The Smart Contract (Deploy via Remix)├── 
├── index.html          # Landing Page (Role Selection)
├── artist.html         # Artist Dashboard (Upload Logic)
├── player.html         # Listener Interface (Streaming Logic)
└── README.md           # Documentation

⚙️ Installation & Setup
To run this project locally or deploy it, follow these steps:

1. Clone the Repository
Bash
git clone [https://github.com/naufalmufidabdillah/music-blockchain.git](https://github.com/naufalmufidabdillah/music-blockchain.git)
cd music-blockchain
2. Smart Contract Deployment
Open Remix IDE.
Upload MusicLite.sol.
Compile and Deploy the contract to Sepolia Testnet (or Ganache).
Copy the Contract Address after deployment.
3. Get IPFS Credentials (Pinata)
Sign up at Pinata.cloud.
Go to API Keys -> Create New Key.
Enable pinFileToIPFS permissions.
Copy the JWT (JSON Web Token).
4. Configure the Frontend (IMPORTANT)
For security reasons, API keys are not included in this repo. You must add your own.

Open artist.html and player.html, then update the configuration section:

JavaScript
// ================= CONFIGURATION =================
const TARGET_CHAIN_ID = 11155111; // 11155111 for Sepolia, 1337 for Ganache
const RPC_URL = "[https://ethereum-sepolia-rpc.publicnode.com](https://ethereum-sepolia-rpc.publicnode.com)"; // Your RPC URL
const contractAddress = "YOUR_CONTRACT_ADDRESS_HERE"; // Paste your deployed contract address
const PINATA_JWT = "YOUR_PINATA_JWT_HERE"; // Paste your Pinata JWT (Only in artist.html)
// =============================================
5. Run the Application
You need a local server to run the HTML files (to avoid CORS issues).
Using VS Code: Install "Live Server" extension -> Right-click index.html -> "Open with Live Server".
Using Python: python -m http.server 8000

⚠️ Important Note
This project connects to the Sepolia Testnet. Ensure your MetaMask wallet is connected to the correct network and has sufficient Test ETH.
# Introduction

This mono repository is a Solves the Devcon 2024 Immunefi CTF

## Repository Structure

```sh
├── .github
├── .vscode
├── contracts
│   ├── {CTF-Challenge}
│   │   ├── src
│   │   ├── dependencies
│   │   ├── docs
│   │   ├── test 
│   │   |    ├── interfaces
│   │   |    └── POC.t.sol
│   │   ├── foundry.toml
│   │   ├── dependencies
│   │   └── README.md
│   └── ...
├── .gitignore 
├── LICENSE
└── README.md
```

## Setup

```sh
git clone https://github.com/emilesean/Devcon-2024-ImmunefiCTF.git
cd Devcon-2024-ImmunefiCTF
cd contracts/{CTF-Challenge}
forge soldeer install
forge build 
forge test
```

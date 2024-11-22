# Introduction
This mono respository is a template used when when auditing live projects. 

### Repository Structure
```sh
├── .github
├── .vscode
├── contracts
│   ├── TemplateContractOne
│   │   ├── src
│   │   ├── lib
│   │   ├── test 
│   │   |    ├── interfaces
│   │   |    └── POC.t.sol
│   │   └── foundry.toml
│   └── TemplateContractTwo
│       ├── src
│       ├── lib
│       ├── test 
│       │    ├── interfaces
│       |    └── POC.t.sol
│       └── foundry.toml
├── doc
│   └── AuditReport.md
├── .gitignore 
├── LICENCE
└── README.md
```

### Setup

```sh
$ git clone https://github.com/emilesean/audit_template.git
$ cd audit_template/contracts/TemplateContractOne
$ forge soldeer install
$ forge build 
$ forge test
```

### Usage

```sh
$ cast interface <ADDRESS> > ./contracts/SampleContractOne/test/interfaces/interface..sol
$ cast etherscan-source <ADDRESS>> --dir ./contracts
$ cd contracts/SampleContractThree
$ cp ../SampleContractOne/foundry.toml .
$ cp -r ../SampleContractOne/interfaces ./test
```

### Run Tests
```sh
$ cd contracts/SampleContractThree
$ forge test --contract ./test/{contract_name}.t.sol -vvv
```
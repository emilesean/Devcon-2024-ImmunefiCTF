# Audit Notes

## Minter Contract

### Minter Method Identifiers

{
  "constructor()" @audit-ok
  "name()": "06fdde03", @audit-ok
  "owner()": "8da5cb5b", @audit-ok
  "decimals()": "313ce567", @audit-ok
  "allowance(address,address)": "dd62ed3e", @audit-ok
  "balanceOf(address)": "70a08231", @audit-ok
  "pair1()": "22fc8fc3", @audit-ok
  "pair2()": "763014c7", @audit-ok
  "symbol()": "95d89b41", @audit-ok
  "setPairs(address,address)": "cf06ab01", @audit-ok
  "ownerMint(uint256)": "f19e75d4", @audit-ok
  "approve(address,uint256)": "095ea7b3", @audit-ok
  "mint()": "1249c58b", @audit
  "transfer(address,uint256)": "a9059cbb",
  "transferFrom(address,address,uint256)": "23b872dd"
}

## WETH Contract

### WETH Method Identifiers

{
  "constructor()" @audit-ok
  "decimals()": "313ce567", @audit-ok
  "name()": "06fdde03", @audit-ok
  "symbol()": "95d89b41", @audit-ok
  "balanceOf(address)": "70a08231", @audit-ok
  "allowance(address,address)": "dd62ed3e", @audit-ok
  "deposit()": "d0e30db0", @audit-ok
  "approve(address,uint256)": "095ea7b3", @audit-ok
  "withdraw(uint256)": "2e1a7d4d" @audit-ok
  "transfer(address,uint256)": "a9059cbb",
  "transferFrom(address,address,uint256)": "23b872dd",
}

## Pair Contract

### Pair Method Identifiers

{
  "constructor()" @audit-ok
  "token0()": "0dfe1681", @audit-ok
  "token1()": "d21220a7" @audit-ok
  "reserve0()": "443cb4bc", @audit-ok
  "reserve1()": "5a76f25e", @audit-ok
  "getReserves()": "0902f1ac", @audit-ok

  "getCurrentPrice()": "eb91d37e",
  "mint(uint256,uint256)": "1b2ef1ca",
  "swap(uint256,uint256,address,bytes)": "022c0d9f",
}

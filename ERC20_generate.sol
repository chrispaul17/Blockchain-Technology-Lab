// SPDX-License-Identifier: MIT
//Chris Paul BE EXTC 2020201063
pragma solidity >=0.7.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
contract PPFC is ERC20
{
    constructor(string memory _name, string memory _symbol) ERC20(_name,_symbol)
    {
        _mint(msg.sender,1000*10**decimals());
    }
}

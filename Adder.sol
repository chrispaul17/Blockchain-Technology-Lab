//Chris Paul BE EXTC 2020201063
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract loop 
{
    function looping(uint n) public pure returns (uint) 
    {
        uint a;
        for (uint i = 0; i <= n; i++) {a=a+i;}
        return a;
    }
}

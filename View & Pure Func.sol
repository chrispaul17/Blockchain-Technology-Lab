// SPDX-License-Identifier: MIT
//By Chris Paul
pragma solidity ^0.8.13;
contract ViewandPure
{
    uint public x = 5;
    function addToX(uint y) public view returns (uint){return x+y;}
    function add(uint i, uint j) public pure returns (uint){return i+j;}
}

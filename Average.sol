//Chris Paul BE EXTC 2020201063
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.26;
contract average_number 
{
    uint[] public array = [565,19,27,28,488,5708,3988,854,4789,2,5,78,18,142];
    function ArrayAverage() public view returns (uint sum, uint average) 
    {
        for (uint i = 0; i < array.length; i++) {sum += array[i];}
        average = sum/array.length;
    }
}

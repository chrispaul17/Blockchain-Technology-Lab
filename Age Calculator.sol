//Chris Paul BE EXTC 2020201063
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.26;
contract age_calculator 
{
    uint current_year = 2022;
    uint age;
    function your_birth_year(uint birth_year) public {age = current_year-birth_year;}
    function your_age() view public returns(uint){return age;}
    function vote() public view returns (string memory)
    {
        if (age>=18){return "Person can vote";}
        else {return "Person can't vote";}
    }
}

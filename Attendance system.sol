//Chris Paul BE EXTC 2020201063
// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;
contract SPIT_attenance_system 
{
    address admin;
    constructor(){admin=msg.sender;}
    function attenance_record(uint noofLectures) public view returns (string memory) 
    {
        require(admin==msg.sender,"Only the admin can access the function");
        if (noofLectures>=8){return("Student is present for the day");}
        else if((noofLectures>=4)&&(noofLectures<8)){return("Student is only present for half a day");}
        else{return ("Student is absent for the day");}
    }
}

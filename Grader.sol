// SPDX-License-Identifier: MIT
//Chris Paul BE EXTC 2020201063
pragma solidity >=0.7.0;
contract Grader 
{
    address admin;
    uint result;
    uint total_marks = 500;  
    constructor(){admin=msg.sender;}
    modifier onlyAdmin(){require(admin==msg.sender,"Only the admin can access the function");_;}
    modifier notAdmin(){require(admin!=msg.sender,"Only the admin can access the function");_;}
    function add(uint a,uint b,uint c,uint d,uint e) public {result = ((a+b+c+d+e)*100)/total_marks;}
    function grade() public view onlyAdmin returns (string memory, uint) 
    {
        if (result>=90){return("Student scored A grade",result);}
        else if((result>=70)&&(result<90)){return("Student scored B grade",result);}
        else if((result>=40)&&(result<70)){return("Student scored C grade",result);}
        else{return ("Student has failed",result);}
    }
    function ownerShow() public view notAdmin onlyAdmin returns(address){return admin;}
}

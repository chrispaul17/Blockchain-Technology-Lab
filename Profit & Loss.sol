//Chris Paul BE EXTC 2020201063
// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;
contract PandLChecker 
{
    address admin;
    constructor(){admin=msg.sender;}
    function checker(int cost_price, int selling_price) public view returns (string memory, int)  
    {
        require(admin==msg.sender,"Only the admin can access the function");
        int PandL=selling_price-cost_price;
        if (PandL<0){return("Seller made a lost of ", PandL);}
        else if(PandL==0){return("Seller made no profit or loss", PandL);}
        else{return ("Seller made profit of ", PandL);}
    }
}

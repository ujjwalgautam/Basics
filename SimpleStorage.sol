// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage{
    uint256  public favNum;
    function store(uint256 _num)public{
        favNum= _num;
        //uint256 n1=35;
        //uint n2=n1;
        //
        retrive();   //if we call retrieve function frm store the gas cost for store 
        //function will  inncrease
    }
    function sth( )public {
        //uint n2=n1; can  not acess n2 from another function
    }
//view disallow any modification only for read
    function retrive()public view returns(uint256){
        return favNum;
    }
    //pure function does no allow modification and read from blockhain state i.e. 
    //we cacn not read favNum
    function add() public pure returns(uint256){
        return (1+10);
    }

    //pure and view function does not utilize gas 
    //only modification and transaction of blockchain state requires the gas
    // if a gas calling function calls view or pure function then gas is utlized
}
//0xf8e81D47203A594245E36C48e151709F0C19fBe8
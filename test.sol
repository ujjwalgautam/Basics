// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; //define version

contract test{// definning contracts like class in other object oriented language
    //boolean,unit(unsigned integer..always positive),int(whole number),addredd,bytes
    bool hasFavoriteNUmber= false;
    uint8 n=4; //defines intger of 8  bytes difault is 256
    int256 n2= -56; //can be positive or negative
    address myAddress=address(0x100920384903dbfeb); //unique number associated with user account
    //it is 20 byte or 160 bits represented by 40 hexadecimal charecters
    bytes32  fav="cat";//cat gets coverted into bytes
}
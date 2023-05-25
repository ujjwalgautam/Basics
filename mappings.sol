// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Array_structs{

    uint favNumber;
    mapping (string=>uint256) public nameTOFavoriteNumber;
    struct Student{
        uint ID;
        string Sname;
    }
    Student[] public stud;
    function addStudent(string memory _name, uint _Id)public{
        //stud.push(Student(_Id,_name));//we dont memory keyword in this
        //Alternatively
        Student memory stud1=Student({ID:_Id,Sname:_name});
        stud.push(stud1);
        nameTOFavoriteNumber[_name]=_Id;
    }
    //Student[] is dynamic array anad Student[5] id fixed sized array
}
//mapping is assiciating a value with key
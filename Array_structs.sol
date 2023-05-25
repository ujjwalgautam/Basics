// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Array_structs{
    struct People{
        uint favNum;
        string name;
    }
    People public person =People({favNum:2,name:"ujjwal"});
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
    }
    //Student[] is dynamic array anad Student[5] id fixed sized array
}

//calldata, memory and storage
//calldata and memory exist temporary , during the transaction
//storage variable exist even ouside the function execution
//ID in above program is storage variable by default
//since we do not nees _name and stud1 after function execution we can declare it as
//memory or calldata
//memory allows value to be modified or reassigned but calldata does not allow
//memory calldata and storage can be assignd to array strucs or mappings

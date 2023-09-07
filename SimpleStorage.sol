// SPDX-License-Identifier: MIT
pragma solidity 0.8.8; //0.8.18


//Building our first contract
//COntract is a keyword in solidity like a class
contract SimpleStorage {
    //boolean, uint, int, adress, bytes are variable types in solidity

    /*bool hasFavouriteNumber = false;
    uint256 favoriteNumber = 123;
    int256 fav = -234;
    string favouriteText = "Five";
    address myAddress = 0x8630B3517c75f518bC5c356DBB442157604794cB;
    bytes32 favouriteBytes = "cat";*/

    uint256 myFavouriteNumber; //This gets initialized to 0

    struct People{
        uint256 favNum; //0th index slot
        string name; //1st index slot
    }

    People public person = People({favNum: 2, name: "Aditya"});

    People[] public people;

    function store(uint256 _favouriteNumber) public virtual  { 
        //The more functionalities you add in a function the more gas each transaction will cost
        myFavouriteNumber = _favouriteNumber;
    }
    mapping(string=>uint256) public nameToFavouriteNumber;

    function retrieve() public view returns (uint256){
        return myFavouriteNumber;
    }
    function addPerson(string memory _name, uint256 _favNum) public {
        //people.push(People({favNum:_favNum, name: _name}));
        //People memory newPerson = People({favNum:_favNum, name:_name});
        People memory newPerson = People(_favNum , _name);
        people.push(newPerson);
        nameToFavouriteNumber[_name] = _favNum;
     }

}
//Visibility on a variable is of 4 types public, orivate, internal and external
//Default visibility is intenal
//Every time we call the above function it leads to a transaction
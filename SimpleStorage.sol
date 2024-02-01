// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;   

contract SimpleStorage {
    uint256 public favoriteNumber;
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

    function storeFavoriteNumber(uint256 number) public   {
        favoriteNumber = number;
    }

    function storeNewPeople(uint256 number,string memory newPersonName) public {
        People memory newPerson = People({favoriteNumber:number,name:newPersonName});
        people.push(newPerson);
        nameToFavoriteNumber[newPersonName] = number;
    }

}

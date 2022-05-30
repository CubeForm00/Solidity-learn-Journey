// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;                      

// My version of SimpleStorage has an array of animal owner's name and their animal. 
// A function to store these values (addowner), one to retrieve them (animalownerArray) and two mapping:
// 1) OwnerToAnimal to retrieve the animal from the owner's name.
// 2) NumberToOwner to retrieve Owner's name from its number.
// There is another function to store your favorite animal and to retrieve it.

contract SimpleStorage {

    string FavoriteAnimal;
    
    struct AnimalOwner {
        
        uint256 Ownernumber;
        string Name;
        string Animal;
    }                 

    AnimalOwner[] public  animalownerArray;                                                 // [] this is an array
    
    mapping (string => string ) public OwnerToAnimal;                                       // with mapping we can link a owner's name to his animal
    mapping (uint256 => string) public NumberToOwner;
    
    function addowner(uint256 _Ownernumber, string memory _Name, string memory _Animal ) public { 
        animalownerArray.push(AnimalOwner(_Ownernumber, _Name, _Animal));
        OwnerToAnimal[_Name] = _Animal;
        NumberToOwner[_Ownernumber] = _Name;
        
    }                                                                                       // this function store the values in the array
   
    function store(string memory _FavoriteAnimal) public{
       FavoriteAnimal = _FavoriteAnimal;

    }

    function retrieve() public view returns(string memory){
        
        return FavoriteAnimal;
    }
    
    
}

// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;                      



// My version of SimpleStorage Smart contract Sample have an array of animal owner's name and their animal
// with a function to store both values and a mapping to retrieve the animal from the owner's name

contract SimpleStorage {
    
    struct AnimalOwner {
        
        string Name;
        string Animal;
    }                 

    AnimalOwner[] public  animalowner;                                // [] this is an array
    mapping (string => string ) public OwnerToAnimal;                 // with mapping we can link a owner's name to his animal
    
    function AddOwner(string memory _Name, string memory _Animal) public { 
        animalowner.push(AnimalOwner(_Name, _Animal));
        OwnerToAnimal[_Name] = _Animal;
    }                                                               // this function store the values in the array

}

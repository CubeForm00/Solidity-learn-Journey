// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;                      



// My version of SimpleStorage Smart contract Sample have an array of animal owner's name and their animal
// with a function to store both values and a function to retrieve them

contract SimpleStorage {
    
    struct AnimalOwner {
       
        string Name;
        string Animal;
    }                 

    AnimalOwner[] public animalowner;                                // [] this is an array
    
    
    function AddOwner(string memory _Name, string memory _Animal) public { 
        animalowner.push(AnimalOwner(_Name, _Animal));
    }                                                               // this function store the values in the array
    function retrieve() public view returns(AnimalOwner memory) {}  // this function retrive the values from the array

}

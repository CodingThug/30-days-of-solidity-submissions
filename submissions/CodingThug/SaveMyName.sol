// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SaveMyName{
  string public name;
  string public smallBio;
  address public owner;

  event PersonCreated(string, newName, string newBio);

  constructor(){
    owner = msg.sender;
  }

  modifier onlyOwner(){
    require(msg.sender == owner, "Now you know damn well, you are not the owner");
    _;
  }

  function saveName(string memory newName, string memory newBio) public onlyOwner {
    name = newName;
    smallBio = newBio;
    emit PersonCreated(newName, newBio);
  }
}
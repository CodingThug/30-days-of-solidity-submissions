// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SaveMyName{
  string public name;
  string public smallBio;

  event PersonCreated(string, newName, string newBio);

  function saveName(string memory newName, string memory newBio) public  {
    name = newName;
    smallBio = newBio;
    emit PersonCreated(newName, newBio);
  }
}
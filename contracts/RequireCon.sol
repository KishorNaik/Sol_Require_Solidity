
//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract RequireCon{

   address private owner;

   constructor(address _ownerAddress){
      owner=_ownerAddress;
      console.log("Owner Addres :",owner);
   }

   function onlyOwner() public view {
      require(owner==msg.sender,"Only owner can access the function");
      console.log("Only Owner can Access");
   }

   function sendEther(uint _etherValue) public view{
      require(_etherValue== 2 ether,"2 ether require");
      console.log("Thanks We got 2 ether");
   }
 

}
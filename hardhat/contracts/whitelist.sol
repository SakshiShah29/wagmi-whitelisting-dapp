
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract whitelist{
    //max number of whitelisters 
    uint8 public maxWhitelistedAddresses;

    mapping(address=>bool) public whitelistedAddresses;

    uint8 public numWhitelistedAddresses;

    constructor(uint8 _maxWhitelistedAddresses){
        maxWhitelistedAddresses=_maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public{
        require(!whitelistedAddresses[msg.sender],"Sender has already been whitelisted");
        require(numWhitelistedAddresses<maxWhitelistedAddresses,"The maximum capacity of whitelisted addresses has reached");
        whitelistedAddresses[msg.sender]=true;
        numWhitelistedAddresses++;
    }
}
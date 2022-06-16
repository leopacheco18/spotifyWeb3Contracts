// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";


contract NewAlbum is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    address public owner;


    constructor(string memory _name, string memory _symbol, string[] memory _songs, address real_owner) ERC721(_name, _symbol) {
        owner = real_owner;
        for (uint i=0; i< _songs.length; i++) {
            createToken(_songs[i], real_owner);
        }
    }   

    function createToken(string memory tokenURI, address real_owner) public returns (uint) {
        require(real_owner == owner, "Only owner is allowed to createTokens");
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();

        _mint(real_owner, newItemId);
        _setTokenURI(newItemId, tokenURI);
        
        return newItemId;
    }

}
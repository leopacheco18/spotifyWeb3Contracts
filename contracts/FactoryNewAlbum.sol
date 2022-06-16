// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "./NewAlbum.sol";

contract FactoryNewAlbum {
    NewAlbum[] public albumsArray;
    event albumCreated(address indexed owner, address indexed contractAddress, string title, string image, string genre, string year);

    function createNewAlbum(string memory _name, string memory _symbol, string[] memory _songs, string memory _title, string memory _image, string memory _genre, string memory _year) public{
        NewAlbum myNewAlbum = new NewAlbum(_name, _symbol, _songs, msg.sender);
        albumsArray.push(myNewAlbum);
        emit albumCreated(msg.sender,address(myNewAlbum), _title, _image, _genre, _year);
    }

    function getAlbumItem(uint256 _index) public view returns (address) {
        return address(albumsArray[_index]);
    }

    function addSong(string memory tokenURI, address adressContract) public {
         NewAlbum myNewAlbum = NewAlbum(adressContract);
         myNewAlbum.createToken(tokenURI, msg.sender);
    }
}
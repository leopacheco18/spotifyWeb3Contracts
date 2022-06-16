const { assert } = require("chai");
const { ethers } = require("hardhat");

describe("AlbumFactory", function () {
  let newAlbumFactoryFactory, newAlbumFactory, newAlbum
  beforeEach(async function () {
    newAlbumFactoryFactory = await ethers.getContractFactory("FactoryNewAlbum")
    newAlbumFactory = await newAlbumFactoryFactory.deploy()
    newAlbum = await newAlbumFactory.createNewAlbum("Test_Album", "TA", ["tokenUri1", "tokenUri2"], "Test_Title", "url_img", "pop", "2022");
  })

  it("Should exist a new instance of new album", async function () {
   await newAlbumFactory.albumsArray(0);

  });
  
});

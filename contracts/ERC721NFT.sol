// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import "@openzeppelin/contracts/utils/Counters.sol";


contract ERC721NFT is ERC721URIStorage , Ownable
{
     using Counters for  Counters.Counter;

     Counters.Counter private _tokenIdCounter;
     
     constructor(string memory _name,string memory _symbol) ERC721(_name,_symbol) {}

    function mint (string memory Uri) public onlyOwner returns(uint256)
    {
          uint tokenId = _tokenIdCounter.current();
          _tokenIdCounter.increment();
          _safeMint(_msgSender(), tokenId);
          _setTokenURI(tokenId, Uri);
          return tokenId;
    }

//     function tokenURI (uint256 tokenID) public view override (ERC721,ERC721URIStorage) returns(string memory)
//     {
//           return super.tokenURI(tokenID);
//     }

  
}
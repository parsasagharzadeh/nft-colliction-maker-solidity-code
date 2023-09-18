// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFTContract is  ERC721URIStorage  {
    address private owner;
    constructor(string memory tokenName, string memory tokenSymbol) ERC721(tokenName, tokenSymbol) {
        owner = msg.sender;
    }

    function createNFT( uint256 tokenId, string memory tokenURI) public {
        require(msg.sender == owner,"creator should be owner");
        _mint(msg.sender, tokenId);
        _setTokenURI(tokenId, tokenURI);
    }
}

// Contract based on https://docs.openzeppelin.com/contracts/4.x/erc1155
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract Erc1155 is ERC1155 {
    // GOLD_ID = 0000000000000000000000000000000000000000000000000000000000000000;
    // SILVER_ID = 0000000000000000000000000000000000000000000000000000000000000001;

    constructor() ERC1155("https://raw.githubusercontent.com/subakjusu/SampleERC1155/master/token/{id}.json") {}

    function mintCaller(uint256 tokenId, uint256 amount) public {
        _mint(msg.sender, tokenId, amount, "");
    }

    function mintOwner(uint256 tokenId, uint256 amount, address owner) public {
        _mint(owner, tokenId, amount, "");
    }

    function mintOwnerWithData(uint256 tokenId, uint256 amount, address owner, bytes memory data) public {
        _mint(owner, tokenId, amount, data);
    }

    function mintSelfBatch(uint256[] memory tokenIds, uint256[] memory amounts) public {
        _mintBatch(msg.sender, tokenIds, amounts, "");
    }

    function mintOwnerBatch(uint256[] memory tokenIds, uint256[] memory amounts, address owner) public {
        _mintBatch(owner, tokenIds, amounts, "");
    }

    function mintOwnerWithDataBatch(uint256[] memory tokenIds, uint256[] memory amounts, address owner, bytes memory data) public {
        _mintBatch(owner, tokenIds, amounts, data);
    }

    function burnCaller(uint256 tokenId, uint256 amount) public {
        _burn(msg.sender, tokenId, amount);
    }

    function burnOwner(uint256 tokenId, uint256 amount, address owner) public {
        _burn(owner, tokenId, amount);
    }

    function burnCallerBatch(uint256[] memory tokenIds, uint256[] memory amounts) public {
        _burnBatch(msg.sender, tokenIds, amounts);
    }

    function burnOwnerBatch(uint256[] memory tokenIds, uint256[] memory amounts, address owner) public {
        _burnBatch(owner, tokenIds, amounts);
    }
}

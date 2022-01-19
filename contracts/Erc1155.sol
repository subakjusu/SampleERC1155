// Contract based on https://docs.openzeppelin.com/contracts/4.x/erc1155
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract Erc1155 is ERC1155 {
    // GOLD_ID = 0000000000000000000000000000000000000000000000000000000000000000;
    // SILVER_ID = 0000000000000000000000000000000000000000000000000000000000000001;

    constructor() ERC1155("https://raw.githubusercontent.com/subakjusu/SampleERC1155/master/token/{id}.json") {}

    function mint(uint256 tokenId, uint256 amount) public {
        _mint(msg.sender, tokenId, amount, "");
    }

    function mint(uint256 tokenId, uint256 amount, address owner) public {
        _mint(owner, tokenId, amount, "");
    }

    function mintBatch(uint256[] memory tokenIds, uint256[] memory amounts) public {
        _mintBatch(msg.sender, tokenIds, amounts, "");
    }

    function mintBatch(uint256[] memory tokenIds, uint256[] memory amounts, address owner) public {
        _mintBatch(owner, tokenIds, amounts, "");
    }

    function burn(uint256 tokenId, uint256 amount) public {
        _burn(msg.sender, tokenId, amount);
    }

    function burn(uint256 tokenId, uint256 amount, address owner) public {
        _burn(owner, tokenId, amount);
    }

    function burnBatch(uint256[] memory tokenIds, uint256[] memory amounts) public {
        _burnBatch(msg.sender, tokenIds, amounts);
    }

    function burnBatch(uint256[] memory tokenIds, uint256[] memory amounts, address owner) public {
        _burnBatch(owner, tokenIds, amounts);
    }
}

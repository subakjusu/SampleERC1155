// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract Erc1155 is ERC1155 {

    constructor() ERC1155("https://raw.githubusercontent.com/subakjusu/SampleERC1155/master/token/{id}.json") {}

    function mint(uint256 tokenId, uint256 amount) public {
        _mint(msg.sender, tokenId, amount, "");
    }

    function mintWithData(uint256 tokenId, uint256 amount, bytes memory data) public {
        _mint(msg.sender, tokenId, amount, data);
    }

    function mintBatch(uint256[] memory tokenIds, uint256[] memory amounts) public {
        _mintBatch(msg.sender, tokenIds, amounts, "");
    }

    function mintWithDataBatch(uint256[] memory tokenIds, uint256[] memory amounts, bytes memory data) public {
        _mintBatch(msg.sender, tokenIds, amounts, data);
    }

    function burn(uint256 tokenId, uint256 amount) public {
        _burn(msg.sender, tokenId, amount);
    }

    function burnBatch(uint256[] memory tokenIds, uint256[] memory amounts) public {
        _burnBatch(msg.sender, tokenIds, amounts);
    }
}

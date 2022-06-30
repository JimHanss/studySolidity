// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract rockPaperScissors is ERC1155, Ownable {

    constructor(uint256[] memory ids, uint256[] memory amounts) ERC1155("https://nftstorage.link/ipfs/bafybeiejltuws5yexntvknu3yl5ckent3fopmpl7uivd46jm3aelxcr5oe/{id}.json") {
        _mintBatch(msg.sender,ids,amounts,'');
    }

    function uri(uint256 _tokenid) override public pure returns (string memory) {
        return string(
            abi.encodePacked(
                "https://nftstorage.link/ipfs/bafybeiejltuws5yexntvknu3yl5ckent3fopmpl7uivd46jm3aelxcr5oe/",
                Strings.toString(_tokenid),".json"
            )
        );
    }
}
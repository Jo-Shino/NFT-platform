// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "base64-sol/base64.sol";

contract NftPlatform is ERC721, AccessControl{
  bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
  bytes32 public constant REGISTER_ROLE = keccak256("REGISTER_ROLE");

  constructor(address _register, address _minter) ERC721("NftPlatform", "NPF") {
    _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _setupRole(REGISTER_ROLE, _register);
    _setupRole(MINTER_ROLE, _minter);
  }

  function tokenURI(uint256 tokenId) 
  public 
  view
  override(ERC721)
  returns (string memory)
  {
    return 
    string (
      abi.encodePacked(
        "data:application/json;base64,",
        Base64.encode(
          bytes(
            abi.encodePacked(
              "{\"name\":\"namae\",\"description\":\"setumei\"}"
            )
          )
        )
      )
    );

  }

  function supportsInterface(bytes4 interfaceId)
    public
    view
    override(ERC721, AccessControl)
    returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}
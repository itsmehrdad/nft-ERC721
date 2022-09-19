// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (token/ERC721/IERC721.sol)

pragma solidity ^0.8.0;

interface IERC721
{     //EVENTS

       event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
      
      //دسترسی به یک ادرس برای جابه جایی یک توکن
       event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

       //for dapp
       event ApprovalForAll(address indexed owner, address indexed operator, bool approved);


       //functions

       //view

      //تعداد ان اف تی های یک ادرس    
      function balanceOf(address owner) external view returns (uint256 balance);

      //ادرس مالک یک توکن ایدی رو برمیگردونه 
      function ownerOf(uint256 tokenId) external view returns (address owner);

      //مربوط به ,اجازه دسترسی به اپراتور ها مثل مارکت پلیس های ان اف تی   event ApprovalForAll
      function isApprovedForAll(address owner, address operator) external view returns (bool);
       
       //ادرسی که بهش دسترسی به توکن ایدی داده شده
      function getApproved(uint256 tokenId) external view returns (address operator);
      

      function safeTransferFrom(address from, address to, uint256 tokenId) external;

      function transferFrom( address from, address to, uint256 tokenId) external;

      function approve(address to, uint256 tokenId) external;

      function setApprovalForAll(address operator, bool _approved) external;  

      function safeTransferFrom(   address from,  address to,uint256 tokenId,bytes calldata data) external;
}
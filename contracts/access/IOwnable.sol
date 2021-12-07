// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.0 (access/Ownable.sol)

pragma solidity ^0.8.0;

interface IOwnable {
    function owner() external view returns (address);
    
    function pushOwnership(address newOwner) external;
    
    function pullOwnership() external;
    
    function renounceOwnership() external;
    
    function transferOwnership(address newOwner) external;
}

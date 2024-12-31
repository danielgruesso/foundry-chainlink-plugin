// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.2 <0.9.0;

import "forge-std/Script.sol";
import "src/interfaces/shared/LinkTokenInterface.sol";
import "@chainlink/contracts/v0.8/shared/token/ERC677/LinkToken.sol";

contract LinkTokenScript is Script {
  function run() external view {
    console.log("Please run deploy() method.");
  }

  function deploy() external returns(address) {
    uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

    vm.startBroadcast(deployerPrivateKey);

    address linkToken = deployCode("LinkToken.sol:LinkToken");

    vm.stopBroadcast();

    return linkToken;
  }
}

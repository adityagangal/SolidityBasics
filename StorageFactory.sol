// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simplaeStorageNumber) public {
        //SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        //simpleStorage.store(_simplaeStorageNumber);
        simpleStorageArray[_simpleStorageIndex].store(_simplaeStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        //SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        //return simpleStorage.retrieve();
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
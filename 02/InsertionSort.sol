// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

contract InsertionSort {
    function sort(uint[] memory data) public pure returns(uint[] memory) {
        uint n = data.length;
        for (uint i = 1; i < n; i++) {
            uint key = data[i];
            uint j = i;
            while (j > 0 && data[j-1] > key) {
                // Move the greater elements one position up to make space for the swapped element
                data[j] = data[j-1];
                j--;
            }
        
            // Place 'key' into its correct location
            data[j] = key;
        }
    
        return(data);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BubbleSort {

    uint[] data1 = [20, 30, 10];
    uint[] data2 = [34, 99, 45, 2, 80, 30];
    uint[] data3 = [57, 88, 35, 29, 65, 90, 100, 99, 52, 23, 60, 80];
    uint[] data4 = [12, 33, 94, 60, 74, 29, 32, 88, 81, 45, 87, 40, 86, 34, 98, 73, 26, 37, 54, 89, 68, 8, 94, 99];
    uint[] data5 = [38, 66, 90, 47, 76, 5, 25, 82, 21, 7, 79, 44, 40, 65, 63, 54, 36, 17, 61, 6, 84, 35, 42, 72, 62, 15, 23, 89, 18, 39, 68, 95, 74, 70, 45, 49, 26, 69, 97, 32];

    function lihatData1() public view returns(uint[] memory) {
        return data1;
    }
    function lihatData2() public view returns(uint[] memory) {
        return data2;
    }
    function lihatData3() public view returns(uint[] memory) {
        return data3;
    }
    function lihatData4() public view returns(uint[] memory) {
        return data4;
    }
    function lihatData5() public view returns(uint[] memory) {
        return data5;
    }

    // Fungsi untuk mengurutkan data menggunakan Bubble Sort
    function bubbleSort(uint option) public returns (uint[] memory) {
        uint[] storage dataToSort;

        // Pilih array yang akan diurutkan berdasarkan parameter option
        if (option == 1) {
            dataToSort = data1;
        } else if (option == 2) {
            dataToSort = data2;
        } else if (option == 3) {
            dataToSort = data3;
        } else if (option == 4) {
            dataToSort = data4;
        } else if (option == 5) {
            dataToSort = data5;
        } else {
            revert("Invalid option. Use 1 for data1, 2 for data2, 3 for data3, 4 for data4, or 5 for data5.");
        }

        uint n = dataToSort.length;
        for (uint i = 0; i < n; i++) {
            for (uint j = 0; j < n - i - 1; j++) {
                if (dataToSort[j] > dataToSort[j + 1]) {
                    // Swap dataToSort[j] dan dataToSort[j+1]
                    uint temp = dataToSort[j];
                    dataToSort[j] = dataToSort[j + 1];
                    dataToSort[j + 1] = temp;
                }
            }
        }
        return dataToSort;
    }
}
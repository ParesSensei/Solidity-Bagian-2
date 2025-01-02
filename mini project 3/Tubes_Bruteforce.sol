// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BruteForceSort {

    uint[] data1 = [20, 30, 10];
    uint[] data2 = [34, 99, 45, 2, 80, 30];
    uint[] data3 = [57, 88, 35, 29, 65, 90, 100, 99, 52, 23, 60, 80];
    uint[] data4 = [12, 33, 94, 60, 74, 29, 32, 88, 81, 45, 87, 40, 86, 34, 98, 73, 26, 37, 54, 89, 68, 8, 94, 99];
    uint[] data5 = [38, 66, 90, 47, 76, 5, 25, 82, 21, 7, 79, 44, 40, 65, 63, 54, 36, 17, 61, 6, 84, 35, 42, 72, 62, 15, 23, 89, 18, 39, 68, 95, 74, 70, 45, 49, 26, 69, 97, 32];

    // Fungsi untuk mengurutkan data langsung di storage
    function bruteForceSort(uint option) public {
        // Pilih array di penyimpanan berdasarkan parameter option
        if (option == 1) bruteForceSortStorage(data1);
        else if (option == 2) bruteForceSortStorage(data2);
        else if (option == 3) bruteForceSortStorage(data3);
        else if (option == 4) bruteForceSortStorage(data4);
        else if (option == 5) bruteForceSortStorage(data5);
        else revert("Invalid option. Use a value between 1 and 5.");
    }

    // Fungsi untuk mengurutkan langsung di storage
    function bruteForceSortStorage(uint[] storage array) internal {
        uint n = array.length;

        // Menggunakan dua loop untuk membandingkan setiap elemen
        for (uint i = 0; i < n - 1; i++) {
            for (uint j = i + 1; j < n; j++) {
                if (array[i] > array[j]) {
                    // Tukar elemen jika tidak dalam urutan yang benar
                    (array[i], array[j]) = (array[j], array[i]);
                }
            }
        }
    }
}

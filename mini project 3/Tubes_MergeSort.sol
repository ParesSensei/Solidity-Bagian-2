// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MergeSort {
    uint[] data1 = [20, 30, 10];
    uint[] data2 = [34, 99, 45, 2, 80, 30];
    uint[] data3 = [57, 88, 35, 29, 65, 90, 100, 99, 52, 23, 60, 80];
    uint[] data4 = [12, 33, 94, 60, 74, 29, 32, 88, 81, 45, 87, 40, 86, 34, 98, 73, 26, 37, 54, 89, 68, 8, 94, 99];
    uint[] data5 = [38, 66, 90, 47, 76, 5, 25, 82, 21, 7, 79, 44, 40, 65, 63, 54, 36, 17, 61, 6, 84, 35, 42, 72, 62, 15, 23, 89, 18, 39, 68, 95, 74, 70, 45, 49, 26, 69, 97, 32];


    // Fungsi untuk mengurutkan data menggunakan Merge Sort
    function mergeSort(uint option) public returns (uint[] memory) {
        uint[] memory dataToSort;

        // Pilih array yang akan diurutkan berdasarkan parameter option
        if (option == 1) { dataToSort = data1;} 
        else if (option == 2) { dataToSort = data2;} 
        else if (option == 3) { dataToSort = data3;} 
        else if (option == 4) { dataToSort = data4;} 
        else if (option == 5) { dataToSort = data5;} 
        else {
            revert("Invalid option. max 5.");
        }

        // Panggil fungsi rekursif untuk mengurutkan
        return mergeSortHelper(dataToSort);
    }

    // Fungsi rekursif untuk Merge Sort
    function mergeSortHelper(uint[] memory array) internal pure returns (uint[] memory) {
        if (array.length <= 1) {
            return array; // Jika panjang array 1 atau kurang, sudah terurut
        }

        uint mid = array.length / 2;
        uint[] memory left = new uint[](mid);
        uint[] memory right;

        if (array.length % 2 == 0) {
            right = new uint[](mid);
        } else {
            right = new uint[](mid + 1);
        }

        // Membagi array menjadi dua bagian
        for (uint i = 0; i < mid; i++) {
            left[i] = array[i];
        }
        for (uint i = mid; i < array.length; i++) {
            right[i - mid] = array[i];
        }

        // Mengurutkan kedua bagian
        left = mergeSortHelper(left);
        right = mergeSortHelper(right);

        // Menggabungkan kedua bagian yang sudah terurut
        return merge(left, right);
    }

    // Fungsi untuk menggabungkan dua array yang sudah terurut
    function merge(uint[] memory left, uint[] memory right) internal pure returns (uint[] memory) {
        uint[] memory result = new uint[](left.length + right.length);
        uint i = 0; // Indeks untuk left
        uint j = 0; // Indeks untuk right
        uint k = 0; // Indeks untuk result

        // Menggabungkan kedua array
        while (i < left.length && j < right.length) {
            if (left[i] <= right[j]) {
                result[k] = left[i];
                i++;
            } else {
                result[k] = right[j];
                j++;
            }
            k++;
        }

        // Menyalin sisa elemen dari left
        while (i < left.length) {
            result[k] = left[i];
            i++;
            k++;
        }

        // Menyalin sisa elemen dari right
        while (j < right.length) {
            result[k] = right[j];
            j++;
            k++;
        }

        return result;
    }
}
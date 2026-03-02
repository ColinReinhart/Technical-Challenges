package main

import (
	"fmt"
	"math/bits"
	"sort"
)

func sortByBits(arr []int) []int {
	sort.Slice(arr, func(i, j int) bool {
		bi := bits.OnesCount(uint(arr[i]))
		bj := bits.OnesCount(uint(arr[j]))
		if bi == bj {
			return arr[i] < arr[j]
		}
		return bi < bj
	})
	return arr
}

func main() {
	fmt.Println(sortByBits([]int{0, 1, 2, 3, 4, 5, 6, 7, 8}))
	// [0 1 2 4 8 3 5 6 7]
	fmt.Println(sortByBits([]int{1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1}))
	// [1 2 4 8 16 32 64 128 256 512 1024]
}

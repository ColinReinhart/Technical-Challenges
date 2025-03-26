package main

import (
	"fmt"
	"math"
	"sort"
)

func minOperations(grid [][]int, x int) int {
	// Flatten the grid
	flat := []int{}
	for _, row := range grid {
		for _, val := range row {
			flat = append(flat, val)
		}
	}

	// Check if it's possible to make all elements equal
	base := flat[0] % x
	for _, val := range flat {
		if val%x != base {
			return -1
		}
	}

	// Normalize the values
	for i := range flat {
		flat[i] = flat[i] / x
	}

	// Find the median
	sort.Ints(flat)
	median := flat[len(flat)/2]

	// Calculate total operations
	ops := 0
	for _, val := range flat {
		ops += int(math.Abs(float64(val - median)))
	}

	return ops
}

func main() {
	// Example inputs
	grid1 := [][]int{{2, 4}, {6, 8}}
	grid2 := [][]int{{1, 5}, {2, 3}}
	grid3 := [][]int{{1, 2}, {3, 4}}

	fmt.Println(minOperations(grid1, 2)) // Output: 4
	fmt.Println(minOperations(grid2, 1)) // Output: 5
	fmt.Println(minOperations(grid3, 2)) // Output: -1
}

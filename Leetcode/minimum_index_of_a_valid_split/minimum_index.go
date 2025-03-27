package main

import (
	"fmt"
)

func minimumIndex(nums []int) int {

	count := make(map[int]int)
	for _, num := range nums {
		count[num]++
	}

	var dominant int
	maxFreq := 0
	for num, freq := range count {
		if freq > maxFreq {
			maxFreq = freq
			dominant = num
		}
	}

	leftCount := 0
	totalCount := count[dominant]
	n := len(nums)

	for i, num := range nums {
		if num == dominant {
			leftCount++
		}
		leftLen := i + 1
		rightLen := n - leftLen
		rightCount := totalCount - leftCount

		if leftCount*2 > leftLen && rightCount*2 > rightLen {
			return i
		}
	}

	return -1
}

func main() {
	fmt.Println(minimumIndex([]int{1, 2, 2, 2}))                   // 2
	fmt.Println(minimumIndex([]int{2, 1, 3, 1, 1, 1, 7, 1, 2, 1})) // 4
	fmt.Println(minimumIndex([]int{3, 3, 3, 3, 7, 2, 2}))          // -1
}

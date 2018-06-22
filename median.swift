/**
 There are two sorted arrays nums1 and nums2 of size m and n respectively.
 
 Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
 
 Example 1:
 nums1 = [1, 3]
 nums2 = [2]
 
 The median is 2.0
 Example 2:
 nums1 = [1, 2]
 nums2 = [3, 4]
 
 The median is (2 + 3)/2 = 2.5
 
 */


func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
	let unique = Array(nums1 + nums2).sorted()
	let n = unique.count
	print(unique)
	if n % 2 == 0 {
		if n > 2 {
			return Double(unique[n/2 - 1] + unique[n/2]) / 2
		}
		else {
			return Double(unique[0] + unique[1]) / 2
		}
	}
	else {
		return Double(unique[n/2])
	}
}

print(findMedianSortedArrays([1,1], [1,2]))



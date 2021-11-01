import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [0, 0]
    for firstIndex in nums.indices {
        for secondIndex in nums.indices {
            if firstIndex != secondIndex,
               nums[firstIndex] + nums[secondIndex] == target {
                result = [firstIndex, secondIndex]
            }
        }
    }
    return result
}

twoSum([1,2,3,6], 7)

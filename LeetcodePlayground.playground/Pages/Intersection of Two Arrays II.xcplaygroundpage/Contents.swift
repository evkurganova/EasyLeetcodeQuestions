import Foundation

//let nums1 = [1,2,3,3,4,5,6,7], nums2 = [1,2,3,3] //[1,2,3,3]
let nums1 = [1,2,2,1], nums2 = [2,2] //[2,2]
//let nums1 = [4,9,5], nums2 = [9,4,9,8,4] //[4,9]
//let nums1 = [1,2,2,1], nums2 = [2] //[2]

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var intersectedArray = [Int]()
    var firstIndex = 0
    var secondIndex = 0
    let sortedFirstNums = nums1.sorted()
    let sortedSecondNums = nums2.sorted()
    
    while firstIndex != sortedFirstNums.count && secondIndex != sortedSecondNums.count {
        let num1 = sortedFirstNums[firstIndex]
        let num2 = sortedSecondNums[secondIndex]
        if num1 == num2 {
            intersectedArray.append(num1)
            firstIndex += 1
            secondIndex += 1
        } else if num1 < num2 {
            firstIndex += 1
        } else {
            secondIndex += 1
        }
    }
    return intersectedArray
}

intersect(nums1, nums2)

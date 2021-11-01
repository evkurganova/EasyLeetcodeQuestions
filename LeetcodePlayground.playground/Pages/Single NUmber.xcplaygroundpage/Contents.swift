import UIKit

let nums = [4,2,1,2,1,4,5]

func singleNumber(_ nums: [Int]) -> Int {
    var result: Int = 0
    for num in nums {
        let count = nums.filter { $0 == num}.count
        if count < 2 {
            result = num
            break
        }
    }
    return result
}

func anotherSingleNumber(_ nums: [Int]) -> Int {
    var uniqueNums = [Int]()
    for num in nums {
        if uniqueNums.contains(num) {
            uniqueNums.removeAll(where: { $0 == num })
        } else {
            uniqueNums.append(num)
        }
    }
    return uniqueNums.first ?? Int.min
}

singleNumber(nums)
anotherSingleNumber(nums)

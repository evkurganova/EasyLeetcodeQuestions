
import Foundation
func rotate(_ nums: inout [Int], _ k: Int) {
    for _ in 0..<k {
        let lastElement = nums.removeLast()
        nums.insert(lastElement, at: 0)
    }
}

var nums = [1,2,3,4,5,6,7]
let k = 3

//var nums = [1,2]
//let k = 3

rotate(&nums, k)

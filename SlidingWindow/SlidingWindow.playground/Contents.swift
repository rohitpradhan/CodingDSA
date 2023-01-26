import UIKit

/*
 209. Minimum Size Subarray Sum
 */
func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var left = 0
    var currentSum = 0
    var minSize = Int.max
    
    for right in 0..<nums.count {
        currentSum += nums[right]
        
        while currentSum >= target {
            let length = right - left + 1
            minSize = min(minSize, length)
            currentSum -= nums[left]
            left += 1
        }
    }
    return minSize == Int.max ? 0 : minSize
}

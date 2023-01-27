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


/*
 424. Longest Repeating Character Replacement
 */
func characterReplacement(_ s: String, _ k: Int) -> Int {
    
    
    var map: [Character: Int] = [:]
    var left = 0
    var maxlength = 0
    var chars = Array(s)
    
    for right in 0..<s.count {
        
        let char = chars[right]
        if let count = map[char] {
            map[char] = count + 1
        } else {
            map[char] = 1
        }
        
        let maxOccur = findMaxOccurance(map: map)
        let length = right - left + 1
        
        if length - maxOccur <= k {
            maxlength = max(length, maxlength)
        } else {
            
            let char = chars[left]
            
            if let count = map[char] {
                map[char] = count - 1
            }
            left += 1
        }
    }
    return maxlength
    
}

func findMaxOccurance(map: [Character: Int]) -> Int {
    var maxOccur = 0
    for key in map.keys {
        if let count = map[key] {
            maxOccur = max(maxOccur, count)
        }
    }
    return maxOccur
}

characterReplacement("AABABBA", 1)

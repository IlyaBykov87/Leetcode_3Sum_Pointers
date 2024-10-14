func threeSum(_ nums: [Int]) -> [[Int]] {
    var res = [[Int]]()
    let sNums = nums.sorted()
    let count = sNums.count

    for i in 0 ..< count {
        let num = sNums[i]
        if i > 0 && num == sNums[i - 1] {
            continue
        }

        if num > 0 {
            return res
        }
        
        var l = i + 1
        var r = count - 1

        while l < r  {
            let threeSum = num + sNums[l] + sNums[r]
            if threeSum < 0 {
                l+=1
            } else if threeSum > 0 {
                r-=1
            } else {
                res.append([num, sNums[l], sNums[r]])
                l+=1
                while l < r && sNums[l] == sNums[l-1] {
                    l+=1
                }
            }
        }
    }

    return res
}

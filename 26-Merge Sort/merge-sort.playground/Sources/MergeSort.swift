public func mergeSort<Element>(_ array: [Element]) -> [Element] where  Element: Comparable {
    guard array.count > 1 else {
        return array
    }
    let middle = array.count / 2
    let left = mergeSort(Array(array[0..<middle]))
    let right = mergeSort(Array(array[middle...]))
    return merge(left, right)
}

private func merge<Element>(_ left: [Element], _ right: [Element]) -> [Element] where Element: Comparable {
    var leftIndex = 0
    var rightIndex = 0
    var result: [Element] = []
    
    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightLement = right[rightIndex]
        if leftElement < rightLement {
            result.append(leftElement)
            leftIndex += 1
        } else if leftElement > rightLement {
            result.append(rightLement)
            rightIndex += 1
        } else {
            result.append(leftElement)
            result.append(rightLement)
            leftIndex += 1
            rightIndex += 1
        }
    }
    
    if leftIndex < rightIndex {
        result.append(contentsOf: left[leftIndex...])
    }
    if leftIndex > rightIndex {
        result.append(contentsOf: right[rightIndex...])
    }
    return result
}

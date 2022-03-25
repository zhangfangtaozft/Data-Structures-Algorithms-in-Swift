public func insertionSort<Element>(_ array: inout [Element]) where Element: Comparable {
    guard array.count >= 2 else {
        return
    }
    for current in 1..<array.count {
        for siftting in (1...current).reversed() {
            if array[siftting] < array[siftting - 1] {
                array.swapAt(siftting, siftting - 1)
            } else {
                break
            }
        }
    }
}

public func insertionSort<CollectionType>(_ collection: inout CollectionType) where CollectionType: BidirectionalCollection & MutableCollection, CollectionType.Element: Comparable {
    guard collection.count >= 2 else {
        return
    }
    for current in collection.indices {
        var sifting = current
        while sifting > collection.startIndex {
            let previous = collection.index(before: sifting)
            if collection[sifting] < collection[previous] {
                collection.swapAt(sifting, previous)
            } else {
                break
            }
            sifting = previous
        }
    }
}

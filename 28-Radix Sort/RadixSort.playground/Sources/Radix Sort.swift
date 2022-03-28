extension Array where Element == Int {
    public mutating func radixSort() {
        let base = 10
        var done = false
        var digits = 1
        while !done {
            done = true
            var buckets: [[Int]] = .init(repeating: [], count: base)
            forEach { number in
                let remainingpart = number / digits
                let digit = remainingpart % base
                buckets[digit].append(number)
                if remainingpart > 0 {
                    done = false
                }
            }
            digits *= base
            self = buckets.flatMap { $0 }
        }
    }
}

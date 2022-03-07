public struct RingBuffer<T> {
    private var array: [T?]
    private var readIndex = 0
    private var writeIndex = 0
    
    public init(count: Int) {
        array = Array<T?>(repeating: nil, count: count)
    }
    
    public var first: T? {
        array[readIndex]
    }
    
    public mutating func write(_ element: T)-> Bool {
        if !isFull {
            array[writeIndex % array.count] = element
            writeIndex += 1
            return true
        } else {
            return false
        }
    }
    
    public mutating func read() -> T?{
        if !isEmpty {
            let element = array[readIndex % array.count]
            readIndex += 1
            return element
        } else {
            return nil
        }
    }
    
    private var avaliableSpaceForReading: Int {
        writeIndex - readIndex
    }
    
    public var isEmpty: Bool {
        avaliableSpaceForReading == 0
    }
    
    public var avaliableSpaceForWriting: Int {
        array.count - avaliableSpaceForReading
    }
    
    public var isFull: Bool {
        avaliableSpaceForWriting == 00
    }
}

extension RingBuffer: CustomStringConvertible {
    public var description: String {
        let values = (0..<avaliableSpaceForReading).map {
            String(describing: array[($0 + readIndex) % array.count]!)
        }
        return "[" + values.joined(separator: ", ") + "]"
    }
}

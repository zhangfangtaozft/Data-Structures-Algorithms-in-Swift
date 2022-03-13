public class BinaryNode<Element> {
    public var value: Element
    public var letChild: BinaryNode?
    public var rightChild: BinaryNode?
    
    public init(value: Element) {
        self.value = value
    }
}

extension BinaryNode: CustomStringConvertible {
    public var description: String {
        
    }
    
    private func diagram(for node: BinaryNode?, _ top: String = "", )
}

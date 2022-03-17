public class AVLNode<Elements> {
    public var value: Elements
    public var leftChild: AVLNode?
    public var rightChild: AVLNode?
    
    public init(value: Elements) {
        self.value = value
    }
}

extension AVLNode: CustomStringConvertible {
    public var description: String {
        diagram(for: self)
    }
    
    private func diagram(for node: AVLNode?, _ top: String = "", _ root: String = "", _ bottom: String = "") -> String {
        guard let node = node else {
            return root + "nil\n"
        }
        if node.leftChild == nil && node.rightChild == nil {
            return root + "\(node.value)\n"
        }
        return diagram(for: node.leftChild, top + " ", top + "┌──", top + "| ") + root + "\(node.value)\n" + diagram(for: node.leftChild, bottom + "| ", bottom + "└──", bottom + " ")
    }
}

extension AVLNode {
    public func traverseInorder(visit: (Elements) -> Void) {
        leftChild?.traverseInorder(visit: visit)
        visit(value)
        rightChild?.traverseInorder(visit: visit)
    }
    
    public func traversePreOrder(visit: (Elements) -> Void) {
        visit(value)
        leftChild?.traversePreOrder(visit: visit)
        rightChild?.traverseInorder(visit: visit)
    }
    
    public func traversePostOrder(visit: (Elements) -> Void) {
        leftChild?.traversePostOrder(visit: visit)
        rightChild?.traversePostOrder(visit: visit)
        visit(value)
    }
}

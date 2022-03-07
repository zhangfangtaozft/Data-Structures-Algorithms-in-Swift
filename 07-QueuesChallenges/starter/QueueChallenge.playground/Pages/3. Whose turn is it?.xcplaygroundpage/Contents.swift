//: [Previous](@previous)
/*:
 # Queue Data Structure Challenges
 
 ## 3. Whose turn is it?
 
 Imagine that you are playing a game of Monopoly with your friends. The problem
 is that everyone always forget whose turn it is! Create a Monopoly organizer
 that always tells you whose turn it is. Below is a protocol that you can
 conform to:
 */

public protocol BoardGamemanager {
    associatedtype Player
    mutating func nextPlayer() -> Player?
}

var queue = QueueArray<String>()
queue.enqueue("vincent")
queue.enqueue("Remel")
queue.enqueue("Lukiih")
queue.enqueue("Allison")
print(queue)

//: [Next](@next)

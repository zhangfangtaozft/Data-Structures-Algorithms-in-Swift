example(of: "bubble sort") {
    var array = [9, 4, 10, 3]
    print("Original: \(array)")
    bubblrSort(&array)
    print("Bubble sorted: \(array)")
}

example(of: "selection sort") {
    var array = [9, 4, 10, 3]
    print("Original: \(array)")
    selectionSort(&array)
    print("Selection sorted: \(array)")
}

example(of: "insertion sort") {
    var array = [9, 4, 10, 3]
    print("Original: \(array)")
    insertionSort(&array)
    print("Insertion sorted: \(array)")
}

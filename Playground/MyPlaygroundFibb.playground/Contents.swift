// Get the fibonacci number at the position in the sequence
// be sure to check the base case, and recursively call getFib
func getFib(_ position: Int) -> Int {
    if position == 1 {
        return 1
    } else if position <= 0 {
        return 0
    } else {
        return getFib(position - 1) + getFib(position - 2)
    }
}

// Test cases
print(getFib(9)) // Should be 34
print(getFib(11)) // Should be 89
print(getFib(0)) // Should be 0

var xxx = [1, 2, 3, 4, 5, 6, 7]
xxx.sort()

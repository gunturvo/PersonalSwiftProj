import UIKit

var str = "Hello, playground"

func calcBMI(weight: Float, height: Float) -> (Float) {
    return (weight / (pow(height, 2)))
}

let we: Float = 60
let he: Float = 1.75
var bmi: Float = 0

bmi = calcBMI(weight: we, height: he)
if bmi > 25 {
    print("overweight")
} else if bmi >= 18.5 {
    print("normal")
} else {
    print("underweight")
}

print(bmi)

let arrayOfNumbers = [1, 3, 5, 4, 6, 21, 52, 4, 23, 4, 2]

for number in arrayOfNumbers {
    print(number)
    print("hehe")
}

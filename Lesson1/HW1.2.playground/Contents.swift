import UIKit
import Foundation

// Задание 1
let firstString = "I can"
let secondString = "code"

print (firstString + " " + secondString + "!")

// Задание 2

//2.1
let myAge = 42

//2.2
var myAgeInTenYears: Int = myAge + 10

//2.3
let daysInYear = 365.25

//2.4
var daysPassed: Float = Float(myAgeInTenYears) * Float(daysInYear)

//2.5

print("\nМой возраст \(myAge) года. Через 10 лет мне будет \(myAgeInTenYears) года, с момента моего рождения пройдёт \(Int(daysPassed)) дня.")

// Задание 3

var catetOne = 8.0
var catetTwo = 6.0
var hypotenuse = sqrt(Double(catetOne*catetOne + catetTwo*catetTwo))
print("\nПлощадь треугольника = \((catetOne * catetTwo) / 2)")
print("Периметр треугольника = \(catetOne + catetTwo + hypotenuse)")


// Задание 3 advanced
func triangle (catetOne: Float, catetTwo: Float) {
    let hypotenuse = sqrt(catetOne*catetOne + catetTwo*catetTwo)
    print("\nПлощадь треугольника = \((catetOne * catetTwo) / 2)")
    print("Периметр треугольника = \(catetOne + catetTwo + hypotenuse)")
}

triangle(catetOne: 8.0, catetTwo: 6.0)

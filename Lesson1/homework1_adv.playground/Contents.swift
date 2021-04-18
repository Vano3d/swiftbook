import UIKit
import Foundation



func forecast (myAge: Int) {

    let myAgeInTenYears: Int = myAge + 10
    let daysInYear = 365.25
    let daysPassed: Float = Float(myAgeInTenYears) * Float(daysInYear)

    func daysYears(n: Int) -> (day: String, year: String) {
        let days: String
        let years: String
        if n % 10 == 1 && n % 100 != 11 {
                days = "день"
                years = "год"
        } else if (2...4 ~= n % 10) && (n % 100 < 10 || n % 100 >= 20)  {
                days = "дня"
                years = "года"
            } else {
                days = "дней"
                years = "лет"
            }
        return (days, years)
        }

    let yearWordAge = daysYears(n: myAge).year
    let yearWordInTenYears = daysYears(n: myAgeInTenYears).year
    let dayWordFromBirth = daysYears(n: Int(daysPassed)).day
    
    if myAge >= 100 {
        print("Столько не живут!")
    } else {
    
    print("Мой возраст \(myAge) \(yearWordAge). Через 10 лет мне будет \(myAgeInTenYears) \(yearWordInTenYears), с момента моего рождения пройдёт \(Int(daysPassed)) \(dayWordFromBirth).")
    }
    
}


forecast(myAge: 42)


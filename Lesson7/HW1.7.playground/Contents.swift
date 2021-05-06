import UIKit

//: # Home Work 7

/*:
 ## Задание 1
 1.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление*.
 */
enum CalculationType: String {
    case addition = "сложения"
    case substraction = "вычитания"
    case multiplication = "умножения"
    case division = "деления"
}


//: 1.2 Напишите функцию возвращающую `Int` и принимающую в качестве параметров три значения: число один, число два и тип математической операции. Внутри функции, в зависимости от значения параметра `CalculationType` выполните соответствующую математическую операцию с константами и верните результат. Реализуйте функцию таким образом, что бы при каждом её вызове на консоль выводилось сообщение следующего содержания: «Результат сложения (вычитания, деления, умножения) <…> и <…> равен <…>».


var operation = CalculationType.addition

func definition(numberOne: Int, numberTwo: Int, operType: CalculationType) -> Int {
    
    var result: Int
    
    if numberTwo == 0 {
        print("ойц! на ноль делить нельзя!")
        return numberTwo
    }
    
    switch operType {
    
    case .addition:
        result = numberOne + numberTwo
    case .substraction:
        result = numberOne - numberTwo
    case .multiplication:
        result = numberOne * numberTwo
    case .division:
        result = numberOne / numberTwo
    }
    
    print("Результат \(operType.rawValue) \(numberOne) и \(numberTwo) равен \(result)\n")
    return result
    
}

 
//: 1.3 Вызовите эту функцию четыре раза для каждого математического оператора в отдельности.
definition(numberOne: 12, numberTwo: 3, operType: CalculationType.addition)
definition(numberOne: 5, numberTwo: -3, operType: CalculationType.substraction)
definition(numberOne: 12, numberTwo: 4, operType: CalculationType.multiplication)
definition(numberOne: 12, numberTwo: 5, operType: CalculationType.division)


/*:
 ## Задание 2
 2.1 Создайте перечисление `CurrencyUnit` со следующими кейсами: `rouble`, `dollar`, `euro`.
 
 Внутри перечисления `CurrencyUnit` создайте еще одно перечисление `DollarCountrys`, в котором содержиться перчень стран-эмитентов (USA, Canada, Australia).
 
 Рубль и Евро должны иметь ассоциативный параметры следующего типа: `([String], String)`. Массив должен содеражать перечень стран, в которых катируется валюта, а тип стринг - аббривиатуру валюты.
 
 Доллар должен иметь на один ассоциативный параметр больше, в соответствии с перечислением `DollarCountrys`.
 */
enum CurrencyUnit {
    case rouble (countries: [String], currenceAbbr: String)
    case dollar (countries: [String], currenceAbbr: String, emit: DollarCountrys)
    case euro (countries: [String], currenceAbbr: String)
    enum DollarCountrys {
        case usa
        case canada
        case australia
    }
}

/*:

 2.2 Создайте экземпляр `dollarCurrency` и присвойете ему значения относящиеся к доллару.
 */
let dollarCurrency = CurrencyUnit.dollar(countries: ["USA", "Zimbabwe", "Guam", "Palau", "Equador"], currenceAbbr: "USD", emit: .usa)
let russianCurrency = CurrencyUnit.rouble(countries: ["Россия", "Абхазия"], currenceAbbr: "руб.")
let euroCurrency = CurrencyUnit.euro(countries: ["Germany", "France", "Spain", "Italy"], currenceAbbr: "euro")

/*: 2.3 Создайте функцию, которая должна принимать валюту и выводить на консоль информацию о ней, например: "Доллар США. Катируется в: США, Доминикана, Куба. Краткое наименование: USD. Для рубля и евро нужно будет определить только список стран и аббривиатуру валюты.
*/



func money(currency: CurrencyUnit) -> () {
    
    switch currency {

    case .rouble(let countries,let currenceAbbr):
        print("Российский рубль. Котируется в: \(countries). Краткое наименование: \(currenceAbbr)")
    case .dollar(let countries, let currenceAbbr, let emit):
        print("Американский доллар. Котируется в: \(countries). Краткое наименование: \(currenceAbbr). Страна-эмитент: \(emit)")
    case .euro(let countries, let currenceAbbr):
        print("Евро. Котируется в: \(countries). Краткое наименование: \(currenceAbbr)")
    }
    
}

money(currency: russianCurrency)
money(currency: dollarCurrency)
money(currency: euroCurrency)
/*:
 ## Задание 3
 3.1 Создайте структуру `ChessPlayer` со следующими свойствами:
 - `name: String`
 - `wins: Int`
 - `description: String`
 
 Свойство `description` должно возвращать сообщение с именем игрока и количеством его побед.
 
 Так же необходимо реализовать метод `addWins` который должен увеличивать количество побед на переданное в него значение.
  */
struct ChessPlayer {
    let name: String
    var wins: Int
    var description: String {
        return "\(name): \(wins) wins"
    }
    
    mutating func addWins(_ addwins: Int) {
        wins += addwins
    }
}

print("\n")
/*:
 3.2 Создайте экзмепляр струкутуры и инициализируйте её свойства. Выведите значение свойства `description` на консоль, а затем вызовите метод `addWins`. Снова выведите значение свойства `description` на консоль.
*/
var chess = ChessPlayer(name: "James", wins: 2)

print(chess.description)
chess.addWins(4)
print(chess.description)


import UIKit

//: # Home work 3

/*:
 ## Задание 1
 Представьте, что вы владелец розничного магазина и вам необходимо установить стоимость товара в зависимости от его количества. До 9 единиц товара вкючительно цена составляет 1000 рублей за штуку. От 10 до 19 единиц товара включительно - 800 руб. шт. И 600 рублей за товар от 20 единиц и выше. Создайте условие при котором цене будет присвоино соответсвующее значение, используя конструкцию `if-else`. Подсчитайте общую сумму и выведите результат на консоль.
 */
let numberOfGoods: Int = 12
var pricePerOne = 0


if numberOfGoods < 1 {
    print("Error")
} else if 1...9 ~= numberOfGoods {
    pricePerOne = 1000
    print(pricePerOne * numberOfGoods)
} else if 10...19 ~= numberOfGoods {
    pricePerOne = 800
    print(pricePerOne * numberOfGoods)
} else {
    pricePerOne = 600
    print(pricePerOne * numberOfGoods)
}



//: |  задание 1 из 4  |  [Далее: Задание 2](@next)

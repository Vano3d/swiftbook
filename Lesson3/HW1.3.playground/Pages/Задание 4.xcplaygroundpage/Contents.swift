import Foundation

/*:
 ## Задание 4*
 С помощью блоков `case` определяются возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.
 
 В этом задании вам необходимо отсортировать конфеты **M&M's** по цвету и по начинке. В первую кучку нужно собрать красные конфеты с шоколадом внутри. Во вторую кучку собирите все желтые конфеты с орехами. А втретью кучку коричневые и зеленые с шоколадом внутри. Нужно реализовать только логику для сортировки конфет. Использовать картежи при этом не нужно. 
 
 */
// -== Простой вариант ==-

//let red = "красный"
//let yellow = "жёлтый"
//let brown = "коричневый"
//let green = "зелёный"
//
//let chokolate = "шоколад"
//let nut = "орех"
//
//let candyColor = green
//let candyFilling = chokolate
//
//switch candyFilling {
//case chokolate where candyColor == red:
//    print("В первую кучку")
//case nut where candyColor == yellow:
//    print("Во вторую кучку")
//case chokolate where candyColor == yellow || candyColor == green:
//    print("В третью кучку")
//default:
//    print("В помойку :)")
//}



// -== Вариант со словарём ==-

let colors = ["red": "красный", "yellow": "жёлтый", "brown": "коричневый", "green": "зелёный"]
let filling = ["nut": "орех", "chokolate": "шоколад"]

let candyColor = colors["red"]
let candyFilling = filling["chokolate"]


switch candyFilling {
case filling["chokolate"] where candyColor == colors["red"]:
    print("В первую кучку")
case filling["nut"] where candyColor == colors["yellow"]:
    print("Во вторую кучку")
case filling["chokolate"] where candyColor == colors["brown"] || candyColor == colors["green"]:
    print("В третью кучку")
default:
    print("В помойку :)")
}








//: [Ранее: Задание 3](@previous)  |  задание 4 из 4  |

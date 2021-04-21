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

//let colors = ["red": "красный", "yellow": "жёлтый", "brown": "коричневый", "green": "зелёный"]
//let filling = ["nut": "орех", "chokolate": "шоколад"]
//
//let candyColor = colors["red"]
//let candyFilling = filling["chokolate"]
//
//
//switch candyFilling {
//case filling["chokolate"] where candyColor == colors["red"]:
//    print("В первую кучку")
//case filling["nut"] where candyColor == colors["yellow"]:
//    print("Во вторую кучку")
//case filling["chokolate"] where candyColor == colors["brown"] || candyColor == colors["green"]:
//    print("В третью кучку")
//default:
//    print("В помойку :)")
//}


// -= Вариант с перебором массива = -

let colors = ["красный", "жёлтый", "коричневый", "зелёный"]
let filling = ["орех", "шоколад"]
var countOne: Int = 0
var countTwo: Int = 0
var countThree: Int = 0
var countTrash: Int = 0

for color in colors {
    for fill in filling {
        switch fill {
        case "шоколад" where color == "красный":
            print("# 1: \(color) \(fill) в первую кучку")
            countOne += 1
        case "орех" where color == "жёлтый":
            print("# 2: \(color) \(fill) во вторую кучку")
            countTwo += 1
        case "шоколад" where color == "коричневый" || color == "зелёный":
            print("# 3: \(color) \(fill) в третью кучку")
            countThree += 1
        default:
            print("\(color) \(fill) В помойку :)")
            countTrash += 1
        }
    }
}

print("\nКоличество конфеток в 1-й кучке: \(countOne)")
print("Количество конфеток во 2-й кучке: \(countTwo)")
print("Количество конфеток в 3-й кучке: \(countThree)")
print("Количество конфеток в помойке: \(countTrash)")









//: [Ранее: Задание 3](@previous)  |  задание 4 из 4  |

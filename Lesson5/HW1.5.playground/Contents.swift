import UIKit

//: # Home Work 5
/*:
 ## Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды. Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Салават Юлаев - N/A
 
 - Игра с Авангард - 2:1
  
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */
let gameResult: [String : [String]] = ["Салават Юлаев" : ["3:6", "5:5", "N/A"],
                                     "Авангард" : ["2:1"],
                                     "АкБарс" : ["3:3", "1:2"]]

for (key, value) in gameResult {
    for item in value {
        print("Игра с \(key) - \(item)")
    }
}







/*:
 ## Задание 2
 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. Вызовите функцию и передайте в неё кошелек с деньгами. В кошельке могут храниться купюры различного достоинства от 50 до 5000 рублей.
 */
func howMuchMoneyInMyWallet (fifty f: Int = 0,
                             hundred h: Int = 0,
                             twoHundred th: Int = 0,
                             fiveHundred fh: Int = 0,
                             thousand t: Int = 0,
                             fiveThousand ft: Int = 0) {

    
    let sum = f * 50 + h * 100 + th * 200 + fh * 500 + t * 1000 + ft * 5000
    print("\n\(sum)")
}

howMuchMoneyInMyWallet(fifty: 15, hundred: 25, fiveHundred: 5, thousand: 6, fiveThousand: 2)




/*:
 ## Задание 3
 3.1 Создайте функцию, которая определяет является ли число четным. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`.
 */
func isEven (_ number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}

isEven(4)


/*:
3.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение.
*/
func isDividedOnThree (number: Int) -> Bool {
    if number % 3 == 0 {
        return true
    } else {
        return false
    }
}

isDividedOnThree(number: 11)


/*:
 3.3 Создайте функцию, которая возвращает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен задаваться при вызове функции при помощи параметров. Вы должны самостоятельно реализовать логику создания массива. Если хотите усложить задание, то можете возвращать несортированный массив чисел в заданном интервале. Главное, что бы числа были уникальными и не повторялись. При этом количество элементов массива должно соответсвовать количеству элементов заданного интервала.
 */
func createArray (_ start: Int, _ end: Int) -> [Int] {
    var newArray: [Int] = []
    for element in start...end {
        newArray.append(element)
    }
    return newArray
}

/*:
3.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
 */
createArray(1, 100)


/*:
 3.5 Создайте функцию для фильтрации переданного в неё массива и отфильтруйте при помощи неё массив из задания **3.4**. Функция должна возвращать новый массив без четных чисел или без чисел, кратных трем. Для определения фильтруемых значений используейте ранее созданные функции из заданий **3.1** и **3.2**.
 */
 //тут фантазия закончилась ((((

//func filterWithoutEven (someArray: [Int]) -> [Int]  {
//
//    var filteredArray: [Int] = []
//
//    for element in someArray {
//        if element % 2 != 0 {
//            filteredArray.append(element)
//        }
//    }
//   return filteredArray
//
//}
//
//filterWithoutEven(someArray: createArray(1, 100))


func filterWithoutEven (someArray: [Int], closure: (Int) -> Bool) -> [Int]  {
    
    var filteredArray: [Int] = []

    for element in someArray {
        if !closure (element) {
            filteredArray.append(element)
        }
    }
   return filteredArray

}
    
filterWithoutEven(someArray: createArray(1, 100), closure: isEven)

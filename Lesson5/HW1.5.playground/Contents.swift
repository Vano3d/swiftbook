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
let gameResult = ["Салават Юлаев" : ["3:6", "5:5", "N/A"],
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

let walletArray = [50:15, 100:25, 500:5, 1000:6, 5000:4]


func howMuchMoneyInMyWallet (array: [Int:Int]) -> Int {
    var sum = 0
    for (key, value) in array {
        sum += (key * value)
    }
    return sum
}

let amount = howMuchMoneyInMyWallet(array: walletArray)
print("\nВ кошельке \(amount) денег")




/*:
 ## Задание 3
 3.1 Создайте функцию, которая определяет является ли число четным. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`.
 */
func isEven (_ number: Int) -> Bool {
    number % 2 == 0
        
    }

isEven(3)


/*:
3.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение.
*/
func isDividedOnThree (number: Int) -> Bool {
    number % 3 == 0
    
}

isDividedOnThree(number: 12)


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
// Вариант по заданию

//func filterWithoutEven (someArray: [Int], even: (Int) -> Bool) -> [Int]  {
//
//    var filteredArray: [Int] = []
//
//    for element in someArray {
//        if !even (element) {
//            filteredArray.append(element)
//        }
//    }
//   return filteredArray
//
//}
//
//filterWithoutEven(someArray: createArray(1, 100), even: isEven)



// Вариант с closure


func filterWithoutEven (someArray: [Int], even: (Int) -> Bool) -> [Int]  {
    
    var filteredArray: [Int] = []

    for element in someArray {
        if !even (element) {
            filteredArray.append(element)
        }
    }
   return filteredArray

}
    
let modTwo = filterWithoutEven(someArray: createArray(1, 100), even: {$0 % 2 == 0})
let modThree = filterWithoutEven(someArray: createArray(1, 100), even: {$0 % 3 == 0})

print("\nСписок из \(modTwo.count) элементов, которые не делятся на 2:")
print(modTwo)
print("\nСписок из \(modThree.count) элементов, которые не делятся на 3:")
print(modThree)




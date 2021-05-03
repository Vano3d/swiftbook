import UIKit


/*:
 ## Задание 1
 1.1 Создайте класс `Orange` со следующими свойствами:
 
 - `color: String`
 
 - `taste: String`
 
 - `radius: Double`
 
 Необходимо реализовать возможность создания экземпляра класса со значенями по умолчанию для свойств *color* и *taste*. Свойство *radius* должно быть обязательным для инициализации, т.е. не должно быть возможности создания экземпляра класса без радиуса.
 
 Объявите геттер *orangeVolume*, возвращающий объем апельсина. При этом расчет объема необходимо реализовать в методе *calculateOrangeVolume* (число Пи в Swift можно получить через константу `Double.pi`. Формулу расчета можно погуглить).
 
 Создайте экземпляр класса `Orange`, вызвав при этом инициализатор только для радиуса. Остальным свойствам, созданного экземпляра присвойте следующие значения:
 
 - `color` — *Orange*

 - `taste` — *Sweet*
 
 Выведите на консоль сообщение: «Orange has <...> color and <...> taste. The volume of orange is <...>», обращаясь к этим значениям через экземпляр класса.
 */
class Orange {
    var color: String
    var taste: String
    let radius: Double
    
    init(color: String = "", taste: String = "", radius: Double) {
        self.color = color
        self.taste = taste
        self.radius = radius
    }
    
    func calculateOrangeVolume(_ :Double) -> Double {
        4 / 3 * Double.pi * pow(Double(radius),3)
    }
    
    var orangeVolume: Double {
        calculateOrangeVolume(radius)
       }
    
}

let orange = Orange(radius: 7.2)

orange.color = "Orange"
orange.taste = "Sweet"



print("Orange has \(orange.color) color and \(orange.taste) taste. The volume of orange is \(orange.orangeVolume)")



/*:
 ## Задание 2
 2.1 Создайте класс `Shape` (родительский класс) со следующими свойствами:
 
 - `height: Float`
 
 - `width: Float`
 
 - `radius: Float`
 
 - `square: Float`
 
 - `perimeter: Float`
 
 Oбъявите в классе методы `squareOfShape` и `perimeterOfShape` для расчетов площади и периметра (длины) фигуры соответственно. Методы должены возвращать `Float`. Создайте отдельный инициализатор для высоты и ширины и отдельный инициализатор для радиуса. Так же создайте свойство `description`, которое должно возвращать сообщение следующего вида: «Площадь фигуры <тип фигуры> равна <... >, периметр (длина) равен(а) <...>»
 */
class Shape {
    var height: Float = 0
    var width: Float = 0
    var radius: Float = 0
    
    var square: Float {
        squareOfShape()
    }
    var perimeter: Float {
        perimeterOfShape()
    }
    
    func squareOfShape() -> Float {
        square
    }
    func perimeterOfShape() -> Float {
        perimeter
    }
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
        
    }
    init(radius: Float) {
        self.radius = radius
    }
    
    var description: String {
        "\nПлощадь фигуры \(type(of: self)) равна \(square), периметр (длина) равен(а) \(perimeter)\n"
    }
}

/*:
 2.2. Создайте классы `Circle`, `Rectangle` и `Ellipse`, унаследовав их от `Shape`. Переопределите методы `squareOfShape` и `perimeterOfShape` для каждого класса в соответствии с правилом расчета площади и периметра (длины) конкретной фигуры.
 */
class Circle: Shape {
    override func squareOfShape() -> Float {
            Float.pi * radius * radius
        }
    override func perimeterOfShape() -> Float {
        radius * Float.pi * 2
    
    }
}


class Rectangle: Shape {
    override func squareOfShape() -> Float {
        width * height
    }

    override func perimeterOfShape() -> Float {
        (width + height) * 2
    }

}

class Ellipce: Shape {
    override func squareOfShape() -> Float {
        Float.pi * width * height
    }

    override func perimeterOfShape() -> Float {
        Float.pi * (width + height)
    }

}


//: 2.3 Создайте по экземпляру каждого класса, кроме `Shape` и проинициализируйте свойства `height` и `width` или `radius` для каждого класса в любые значения. Выведите значение свойства `description` на консоль.
let circle = Circle(radius: 7)
print(circle.description)

let rectangle = Rectangle(height: 7, width: 12)
print(rectangle.description)

let ellipce = Ellipce(height: 5, width: 7)
print(ellipce.description)

 
/*:
 ## Задание 3
 3.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:
 
 - `salary`
 
 - `name`
 
 - `surname`
 */
class Employee {
    var name: String
    var surname: String
    var salary: Int
    
    init(_ name: String,_ surname: String,_ salary: Int) {
        self.name = name
        self.surname = surname
        self.salary = salary
    }
}


//: 3.2 Создайте массив `names` со следующими именами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` со следующими фамилиями: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jankins*. Массивы должны быть созданы вне класса.
let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]


//: 3.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*

var employees = [Employee]()

for _ in 0...9 {
    let randNames = names.randomElement()!
    let randSurNames = surnames.randomElement()!
    let randSalary = Int.random(in: 1000...2000)
    let newEmployee = Employee(randNames, randSurNames, randSalary)
    employees.append(newEmployee)
}


//: 3.4 Переберите массив `employees` и выведите информацию по каждому сотруднику в виде: «<имя> <фимилия>’s salary is $<... >»
for employee in employees {
  print("\(employee.name) \(employee.surname) salary is \(employee.salary)")
}


//: 3.5 Создайте еще один массив на основе `employees`, который включает только тех работников, чья зарплата чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 3.4
print("\n")
var evenEmployees = [Employee]()

for employee in employees {
    if employee.salary % 2 == 0 {
        let evenEmployee = Employee(employee.name, employee.surname, employee.salary)
        evenEmployees.append(evenEmployee)
        print("\(evenEmployee.name) \(evenEmployee.surname) salary is \(evenEmployee.salary)")
    }
}



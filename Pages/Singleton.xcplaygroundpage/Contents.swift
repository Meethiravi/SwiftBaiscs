//: [Previous](@previous)

import Foundation

//: [Next](@next)
//Singletons

//only one copy of object will be there to share it accross classes
//let defaults = UserDefaults.standard //is a Singleton (eg)
//let sharedURLSession = URLSession.shared //is a Singleton (eg)

//class Car {
//    var colour = "Red"
//}
//let myCar = Car()
//myCar.colour = "Blue"
//
//let yourCar = Car()
//print(yourCar.colour) //red


//class Car {
//    var colour = "Red"
//    static let singletonCar = Car()
//}
//let myCar = Car.singletonCar
//myCar.colour = "Blue" //singleton passes the same value accross all instances of class
//
//let yourCar = Car.singletonCar
//print(yourCar.colour) //blue
//
//class A {
//    init() {
//        Car.singletonCar.colour = "Brown"
//    }
//}
//
//class B {
//    init() {
//        //Car.singletonCar.colour = "White"
//        print(Car.singletonCar.colour) //accesses the same object across all classes
//    }
//}
//let a = A()
//let b = B()

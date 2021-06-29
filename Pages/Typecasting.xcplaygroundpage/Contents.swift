//: [Previous](@previous)

import Foundation

//: [Next](@next)
//Casting as! as? is

//class Animal {
//    var name: String
//
//    init(n: String) {
//        name = n
//    }
//}
//
//class Human: Animal {
//    func code() {
//        print("Typing away...")
//    }
//}
//
//class Fish: Animal {
//    func breatheUnderWater() {
//        print("Breathing under water")
//    }
//}
//
//let maha = Human(n: "Mahalakshmi")
//let abi = Human(n: "Abi")
//let nemo = Fish(n: "Nemo")
//Any(used for all objects) -> AnyObject(only for objects derived from class) -> NSObject(only foundation object found inside import foundation modules)
//let num = 2
//let neighbours = [maha, abi, nemo]
//let neighbours: [Any] = [maha, abi, nemo, num] //num is added only when data type is any. AnyObject since it is created from struct and not class. NSObject will not work as well

//func findNemo(from animals: [Animal]) {
//    for animal in animals {
//        if animal is Fish {  //type checking
//            print(animal.name)
//            let fish = animal as! Fish //forced downcasting as!
//            fish.breatheUnderWater() //this line would not work without forced downcasting
//            let animalFish = fish as Animal //raise a obj of subclass to its superclass: upcasting
//        }
//    }
//}
//findNemo(from: neighbours)
//let fish = neighbours[1] as! Fish //gives error
//if let fish = neighbours[1] as? Fish {//better to use typecasting which needs to be checked and unwrapped like optionals
   // fish.breatheUnderWater()
//} else {
//    print("Casting has failed") //this is triggered
//}


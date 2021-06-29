//: [Previous](@previous)

import Foundation

//: [Next](@next)

//Observed property - activated only when changes are made. willset and didset
var pizzaInInches: Int = 10 {
    willSet { //when changes are being made
        //print(pizzaInInches) //oldvalue
        //print(newValue)
    }
    didSet { //after the changes are made
        //print(oldValue)
        //print(pizzaInInches) //newvalue
        if pizzaInInches >= 18 {
            print("Invalid size, pizzaInInches is now set to 18")
            pizzaInInches = 18
        }
    }
}

pizzaInInches = 33
//print(pizzaInInches)


var numberOfPeople: Int = 6
let slicesPerPerson: Int = 5

var numberOfSlices: Int {       //computed property should always be declared using var
    get {
        return pizzaInInches - 4
    }
    set {  //set whenever a new value is set to numberOfSlices
        print("Number of slices changed to a new value which is, \(newValue)") //newvalue returns the changed value
    }
}

print(numberOfSlices)
//numberOfSlices = 12 //without a setter this line won't work

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizza = 4  //check how many people i can feed with the given pizzas
print(numberOfPizza)



//another example
var width: Float = 3.4
var height: Float = 2.1
 
 
var bucketsOfPaint: Int {
    get {
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roudedBuckets = ceilf(numberOfBuckets)
        return Int(roudedBuckets)
    }
    set {
        let areaCanCover = Double(newValue) * 1.5
        print("This amount of paint can cover an area of, \(areaCanCover)")
    }
}
 
print(bucketsOfPaint)
bucketsOfPaint = 8

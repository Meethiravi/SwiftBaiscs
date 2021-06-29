import Foundation

//print("*********Optionals*********")
//func getWorkerStatus() -> String {
//   return "Work"
//}

//func getWorkerStatus(weather: String) -> String? {
//   if weather == "rainy" {
//      return nil
//   } else {
//      return "Work"
//   }
//}
//
//func takeWorkerAction(status: String) {
//   if status == "Work" {
//      print("Working")
//   }
//}


//takeWorkerAction(status: getWorkerStatus(weather: "rainy")!)
//unwrapping part

//if let workerStatus = getWorkerStatus(weather: "sunny") {
//   takeWorkerAction(status: workerStatus)
//}




//print("*******forced unwrapping*****")
//func yearAlbumReleased(name: String) -> Int? {
//   if name == "Taylor Swift" { return 2006 }
//   if name == "Fearless" { return 2008 }
//   if name == "Speak Now" { return 2010 }
//   if name == "Red" { return 2012 }
//   if name == "1989" { return 2014 }
//return nil
//}
//var year = yearAlbumReleased(name: "Red")
//
//if year == nil {
//    print("error")
//}
//else {
//    print("\(year!)")
//}


//print("*****Optional chaining*******")
//func albumReleased(year: Int) -> String? {
//   switch year {
//   case 2006: return "Taylor Swift"
//   case 2008: return "Fearless"
//   case 2010: return "Speak Now"
//   case 2012: return "Red"
//   case 2014: return "1989"
//   default: return nil
//} }

//let album = albumReleased(year: 2006)
//print("The album is \(album!)")

//let album = albumReleased(year: 2006)?.uppercased()
//print("The album is \(album!)")


//print("*******nil coalescing operator")
//let album = albumReleased(year: 2006) ?? "unknown"
//print("The album is \(album)")


//print("********Guard*****")
//func greet(name: String?) {
//    guard let unwrapped = name else {
//        print("You didn't provide a name!")
//        return
//    }
//
//    print("Hello, \(unwrapped)!")
//}
//greet(name: "Mickey")



//print("******Enumeration*******")
//enum WeatherType {
//   case sun
//   case cloud
//   case rain
//    case wind(speed: Int)
//   case snow
//}

//func getWorkerStatus(weather: WeatherType) -> String? {
//    if weather == WeatherType.rain {
//          return nil
//       } else {
//          return "Work"
//    } }
//getWorkerStatus(weather: WeatherType.cloud)

//exhaustive error
//func getWorkerStatus(weather: WeatherType) -> String? {
//   switch weather {
//   case .rain:
//      return nil
//   case .wind(let speed) where speed < 10:
//      return "dislike"
//   case .cloud, .wind:
//      return "lazy"
//   case .sun:
//      return "work"
//   case .snow:
//      return "work"
//   }
//}
//
//getWorkerStatus(weather: WeatherType.wind(speed: 5))


//print("*****Struct******")
//struct Person {
//
//    var clothes: String
//    var shoes: String

//    func describe() {
//        print("I like wearing \(clothes) with \(shoes)")
//    }

//}


//let taylor = Person(clothes: "tshirt", shoes: "sneakers")
//let others = Person(clothes: "skirts", shoes: "heels")
//print(taylor.clothes)

//copy

//var taylorCopy = taylor
//taylorCopy.shoes = "flip flops"
//
//print(taylor)
//print(taylorCopy)

//taylor.describe()
//others.describe()


//print("*****class***")
//class Person {
//   var clothes: String
//   var shoes: String
//   init(clothes: String, shoes: String) {
//      self.clothes = clothes
//      self.shoes = shoes
//   }
//
//}

//inheritance


//class Singer {
//   var name: String
//   var age: Int
//   init(name: String, age: Int) {
//      self.name = name
//      self.age = age
//}
//   func sing() {
//      print("La la la la")
//   }
//}

//var taylor = Singer(name: "Taylor", age: 25)
//taylor.name
//taylor.age
//taylor.sing()

//class CountrySinger: Singer {
//    override func sing() {
//          print("Trucks, guitars, and liquor")
//       }
//}
//
//var taylor = CountrySinger(name: "Taylor", age: 25)
//taylor.sing()



//print("******Property observer*******")
//struct Person {
//
//   var clothes: String {
//      willSet {
//         updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
//      }
//      didSet {
//         updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
//      }
//   }
//}
//
//func updateUI(msg: String) {
//   print(msg)
//}
//
//
//var taylor = Person(clothes: "T-shirts")
//taylor.clothes = "short skirts"

//access controls

//Public
//Internal
//File Private
//Private

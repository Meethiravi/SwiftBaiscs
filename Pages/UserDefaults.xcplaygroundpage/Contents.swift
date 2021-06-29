//: [Previous](@previous)

import Foundation

//: [Next](@next)
//UserDefaults

//It gets back the same item that is stored. So its called Singleton
//prone to abuse- only use to persist small data(few kbytes) like volume
//should not be used as db
//let defaults = UserDefaults.standard
//
//let dictionaryKey = "myDictionary" //best practice
//
//defaults.set(0.24, forKey: "Volume") //type float
//defaults.set(true, forKey: "MusicOn") //type bool
//defaults.set("Maha", forKey: "PlayerName") //type any
//defaults.set(Date(), forKey: "AppLastOpenedByUser") //type any.
//
//let array = [1, 2, 3]
//defaults.set(array, forKey: "myArray")
//
//let dictionary = ["name": "Maha"]
//defaults.set(dictionary, forKey: dictionaryKey)
//
//
//let volume = defaults.float(forKey: "Volume")
//let musicOn = defaults.bool(forKey: "MusicOn")
//let playerName = defaults.object(forKey: "PlayerName")
//let appLastOpen = defaults.object(forKey: "AppLastOpenedByUser") //object is used because its of type "any"
//let myArray = defaults.array(forKey: "myArray") as! [Int] //downcast [any] to [int]
//let myDictionary = defaults.dictionary(forKey: dictionaryKey)

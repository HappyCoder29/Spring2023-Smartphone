import UIKit

let name: String = "Ashish"
var age: Int8 = 21

var arr = [1,2,3]

var emptyArray: [Int] = []

print(Int16.max)

//Data Types
/*
 Int   23
 Float 5.6
 Double 3.1415926
 Bool true/ false
 Character 'a' 'B' '='
 String "Ashish"
 Array [1,2,3,45,46]
 
 */

print(name)


// Operators

// Arithmetic operators
/*
 Add +
 Subs -
 mult *
 divide /
 remainder %
 assignment =
 */

// Comparision Operators
/*
 Equal ==
 Not Equal !=
 Greater than >
 less than <
 greater than equal to >=
 Less than equal to <=
 And &&
 Or ||

 */



// Ternary Conditional Operators
// var variable =  Condition ? value1 : value 2

let howOldAreYou = age > 40 ? "Experienced": "You are young"

print(howOldAreYou)


// String Interpolation

let firstName = "Ashish"
let lastName = "Singh"

let helloString = "Hello \(firstName), \(lastName)  welcome to the class"

print(helloString)


// Collection Types
var friends: [String] = []

friends.append("Tom")
friends.append("Bill")
friends.append("Mark")
friends.append("Peter")
print(friends.count)
print(friends.first)
print(friends.endIndex)
print(friends.remove(at: 0))
print(friends.first)

friends[0] = "Andy"
let firstFriend = friends[0]
print(firstFriend)

for friend in friends {
    print(friend)
}

for (index, friend) in friends.enumerated(){
    print("Friend Name = \(friend) Index = \(index)")
}


// Sets

var foodItemsEmpty = Set<String>() // Empty

var foodItemsInitialized: Set<String> = ["Pizza", "Burger", "Salad"]

var foodItemsInitializedInferred: Set = ["Pizza", "Burger", "Salad"]

foodItemsEmpty.insert("Pizza")
foodItemsEmpty.insert("Burger")
foodItemsEmpty.insert("Salad")


print(foodItemsEmpty.contains("Burger"))

for food in foodItemsEmpty.sorted(){
    print(food)
}


// Dictionary : HashTable
var countryDetailsEmpty: [String: String] = [:]

var countryDetailsInitialized: [String: String] =
[
    "US": "United states",
    "IN": "India",
    "CN": "China",
    "CA": "Canada",
    "EN": "England",

]

var countryDetailsInferred =
[
    "US": "United states",
    "IN": "India",
    "CN": "China",
    "CA": "Canada",
    "EN": "England",

]


countryDetailsInferred.removeValue(forKey: "EN")

countryDetailsInferred["CA"] = nil

countryDetailsInferred["IN"] = "Country India"

countryDetailsInferred.updateValue("Country India1", forKey: "IN")
print("\(countryDetailsInferred["IN"])")


for (countryCode, countryName) in countryDetailsInferred{
    print("Country Code = \(countryCode) Country Name = \(countryName)")
}


var i = 0
let endIndex = 5

while i < endIndex {
    print("I am here")
    i = i + 1
}

if age < 40 {
    print("You are young")
} else {
    print("You are experienced")
}


// Switch

let letter = "A"

switch letter {
case "a", "A":
    print("This is first letter")
case "z":
    print("This is last letter")
default:
    print("This is some of the middle letter")
}

// Optional ?

var myInt: Int?
myInt = 5
// If let
if let myInt = myInt {
    let multipliedBy5 = myInt * 5
    print(multipliedBy5)
}


func greet() {
    print("Hello world")
}

greet()

func greetWithName(_ firstName : String, lastName : String){
    print("Hello \(firstName), \(lastName)")
}

greetWithName("Ashish", lastName: "Singh")


func getFullName(_ firstName: String, _ lastName : String) -> String {
    
    return "\(firstName), \(lastName)"
}

print(getFullName("Ashish", "Singh"))


var a = 5

func incrementByOne(_ a : inout Int){
    a = a + 1
}
incrementByOne(&a)
print("Value of a = \(a)")


// Structures

struct User {
    let firstName: String
    let lastName: String
    var age: Int
    func getFullName() -> String{
        return "\(firstName), \(lastName)"
    }
}
var ashish = User(firstName: "Ashish", lastName: "Singh", age: 21)
print(ashish.getFullName())



// Enums


enum ColorEnum {
    case red
    case green
    case blue
}

print(ColorEnum.red)



enum IntEnum : Int {
    case one = 1
    case two
    case three
}

print(IntEnum.two.rawValue)


enum CityEnum : String {
    case DEL = "Delhi"
    case SEA = "Seattle"
    case PDX = "Portland"
}

print(CityEnum.PDX)


class UserClass {
    let firstName: String
    let lastName: String
    var age: Int
    func getFullName() -> String{
        return "\(firstName), \(lastName)"
    }
    
    init(firstName : String, lastName: String, age : Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
}

var billGates = UserClass(firstName: "Bill", lastName: "Gates", age: 60)

print(billGates.getFullName())

import UIKit

var str = "Hello, playground"

print("Unnat")

// difference between 'var' and 'let'
// both is used to create variable
// let variable is immutable
// var variable is mutable (changeable)
let myName = "Unnat" // fixed variable

//Different variable types

//1. Strings
let myCountry = "India"

print("Hello, "+myName)

//2. Integer
let myInt = 21
print(myInt)
let myDouble = 23.1
//print(myInt*myDouble) will throw an error for arthmetic operation if variable type is not same.
print(Double(myInt)*myDouble) // typecasting int -> Double
print(type(of: myInt))

//3. Doubles or float
var sds = 25.0  // by default swifts allots decimal number to Double variable type
print(type(of: sds))
let fix_d:Double = 23.4
print(fix_d)

//4. Boolean

let a:Bool = true
// while typecasting any number to Bool 0 maps to false everything else is true
let test = Bool(0.00)
let test_d = Bool(-23123123241.1231232)
print(test_d)

var ltest = 89*29.0
print(ltest)


// PART 2 Array and Dictonary

// Array
var array:[String] = ["Unnat","Ram","Shyam"]
print(array[2])
array.sort()
print(array)
print(array.count)
array.append("Priya")
print(array)
array.remove(at: 1)
print(array)
print(array[0])

var arrayInt = [3.87,7.1,8.9]
print(arrayInt)
arrayInt.remove(at: 1)
arrayInt.append(3.87*8.9)
print(arrayInt)


// Mix array
let mixarray:[Any] = [32,"Unnat",true]
print(mixarray)

// Blank Array
var stringarr:[String] = []
stringarr.append(contentsOf: ["unnat","Luke"])
print(stringarr)

// Dictionary
var firstDict = ["coffee":"best drink ever","yoga":"good for health"]
//Indexing
print(firstDict["coffee"]!)
print(firstDict.count)
print(firstDict.keys, firstDict.values)

// creating empty dict
//var emptyDict:[String:String] = [:]
var emptyDict = [String:String]()
emptyDict["sdsd"] = "1"
print(emptyDict)
emptyDict.updateValue("2", forKey: "sdsd")
// Creating Dictionary from array
let mobile = ["s9","iphone","oppo"]
let price = [23,31,12]
var mob = Dictionary(uniqueKeysWithValues: zip(mobile,price))
print(mob)

let menu = ["pizza":10.99, "ice cream":4.99, "salad":1.99]
var total_price = 0.0
for value in menu.values{
    //print(value)
    total_price += value
}
print(total_price)

arc4random_uniform(6)
var i:Double = 1
// while loop
while i<21 {
    print("7 x \(Int(i)) = ",i*7)
    i+=1
}
var array1 = [7,23,98,1,0,763]
//print(array1.count) is equivalent to len in python
var ii = 0
while ii < array1.count {
    array1[ii] += 1
    ii+=1

}
print(array1)

var array2 = [1,2,3,5,4]

// For loops



for element in array2{
    print(element)
}

// lets add the value in the array
for (index, value) in array2.enumerated(){
//    print(index, value)
    array2[index] = value + 1
}

var numbers:[Double] = [8,7,19,28]
for (index,_) in numbers.enumerated(){
    numbers[index]/=2
}
print(numbers)



// Classes and objects
class Ghost {
    var isAlive = true
    var strength = 9
    func applyMedpack() {
        strength = min(strength+4, 9)
    }
    func current_strength() -> Int {
        if isAlive{
            return strength
        }
        else {
            strength = 0
            return 0
            
        }
    }
    func isStrong() -> Bool {
        if strength > 4{
            return true
        }
        else {
            return false
        }
    }
    func damage(_ value:Int) -> Int{
        strength = max(0,strength-value)
        if strength == 0{
            isAlive=false
            }
        return strength
    }
}
var ghost = Ghost()
print(ghost.isAlive,ghost.isAlive)
print(ghost.current_strength())
print(ghost.damage(3))


////////////////////////////////////////// OPTIONALS /////////////////////////////////////////
//var num:Int
//print(num)  will throw an error
var num:Int?  // this is like initializing num with nil!
print(num)


// Example
let userentertext = "3" // so this optional it can have desired value or not.
let userenternumber = Int(userentertext)
if let catAge = userenternumber{
    print(catAge*7)
}
else {
    print("Error")
}
//// Saving permanent data
UserDefaults.standard.set("Unnat", forKey: "Name")
/// retriving the save data
UserDefaults.standard.object(forKey: "Name")

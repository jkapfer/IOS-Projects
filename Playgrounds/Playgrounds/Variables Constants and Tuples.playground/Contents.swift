import UIKit
//Declaration of variable
var mobileBrand = "Apple"
mobileBrand = "Samsung"
print(mobileBrand)
print()

let pi = 3.14
print(pi)
print()

//Explicit Declaration of Variable
var age : Int = 21
age = age * 2
print(age)
print()

var httpError  = (errorCode : 404   , errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )
print()

var name = ("John","Smith")
var fName = name.0
var lName = name.1
print(fName , terminator : "-")
print(lName)
print()

var origin = (x : 0,y : 0)
var point = origin
print(point)
print()

let city = (name : "Maryville" , polulation : 11,000)
let (cityName,cityPopulation) = (city.0,city.1)
print(cityName)
print(cityPopulation)
print()

let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))
print()

var fname = "Dirt"
var lname = "Joe"
(fname , lname) = (lname, fname)
print ("First Name is \(fname) and Last is \(lname)")
print()

var cricketKit = ("handGloves" ,"helmet", ("bat","ball"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)
print

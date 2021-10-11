import UIKit

/*
 types:
 Int: whole numbers.
    Ex:  42 and -23.
 
 Float: represent a 32-bit floating-point number, It is used to hold numbers with smaller decimal points.
    Ex: 3.14159 and -273.158.
 
 Double: This is used to represent a 64-bit floating-point number and used when floating-point values must be very large.
    Ex: 3.14159, 0.1, and -273.158
 
 Bool: a Boolean value which is either true or false.
 
 String: an ordered collection of characters.
    Ex: "Hello, World!"
 
 Character: a single-character string literal.
    Ex: "C"
*/


/*
 Syntax: var variableName: type = value
*/
var myInt: Int = 4

/*
 Syntax: var variableName = value
*/
var myInt2 = 4 //type inference



var time = 6

if time < 12 {
    print("Good morning")
}else if time < 20 {
    print("Good afternoon")
}else{
    print("Good evening")
}



















//first we saw how to call a function

// how to make a function call ???

//example of a function is:

func apple(){      //this function is specific but not general
    let favoriteFruit = "apple"
    print("I like " + favoriteFruit)
}
apple() //function call

/***********************************/
//this function is more useful, anyone can use  it
func favoriteFruit(name: String){
    print("I like " + name)
}
favoriteFruit(name: "apple")
favoriteFruit(name: "Orange")

//we can pass more than one parameter in the parameter list
func hello(firstName: String, lastName: String) {
    print("Hello \(firstName) \(lastName)")
}
hello(firstName: "Johnny", lastName: "Appleseed")








func myName (firstName: String, lastName: String)->String{
    return ("\(firstName), \(lastName)")
}
myName(firstName: "Zahra", lastName: "Ali")




class Car {
    var color = "white"
}

var van = Car()
var pickUp = Car()
var truck = Car()

van.color

/**/


let chores = ["Vacuuming", "Dusting", "Laundry", "Feed the dragons"]
let minutesPerChore = 10
let numberOfChores = chores.count
let choresTime = numberOfChores * minutesPerChore

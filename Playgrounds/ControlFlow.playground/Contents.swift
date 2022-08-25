import UIKit
//basic if-else
var marks = 45
if (marks > 50) {
    print("The student had passed with \(marks) marks ")
}else{
    print("The student had managed to get \(marks) marks")
}
print()
//switch case
let alphabet:Character="a"
switch alphabet {
case "a","A":
    print("It is alphabet a or A")
case "b":
    print("It is lower alphabet b")
case "C":
    print("It is upper case alphabet C")
default:
    print("None of the cases are executed above")
}
print()
//switch case with range operator
let isHot:Double = -10.0
switch isHot {
case 60...95:
    print("It's really warm. Donk't forget to wear sunscreen.")
case 35...60:
    print("It's not that cold. Wear a t-shirt")
case ..<35:
    print("It's very cold. Consider wearing a scarf.")
default:
    print("The temperature is unbearable")
}
print()
//nested switch case
var x:Int=3
var y:Int=4
var z:Int=5
switch x {
    case 5:
        print("\(z)~",terminator:"")
    case 3:
        print("\(x)~",terminator:"")
        switch y {
            case 3:
                print("\(x)~",terminator:"")
            case 4:
                print("\(y)~",terminator:"")
                switch z {
                    case 5:
                        print("\(z)~",terminator:"")
                    case 4:
                        print("\(y)~",terminator:"")
                    default:
                         print("No Matching case found")
                }
            default:
                print("No Matching Case  found")
        }
    default:
        print("No number is matching")
}

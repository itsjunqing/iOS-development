import UIKit

func calcBMI (weight: Double, height: Double) -> Double {
    let bmi = weight / pow(height, 2)
    
    if bmi > 25 {
        print("You are overweight")
    
    } else if bmi > 18.5 && bmi < 25 {
        print("You have a normal weight")
    
    } else {
        print("You are underweight")
    }
    
    return bmi
}

calcBMI(weight: 50, height: 1.6)


var selectedSoundValue: Int = 0

switch 5 {
case 1:
    selectedSoundValue = 1
case 2:
    selectedSoundValue = 2
case 3:
    selectedSoundValue = 3
case 4:
    selectedSoundValue = 4
case 5:
    selectedSoundValue = 5
case 6:
    selectedSoundValue = 6
case 7:
    selectedSoundValue = 7
default:
    print("unknown")
}

print(selectedSoundValue)

var whatchue = 30

print(whatchue)

10 / 5 * 2


let awesome = 3

print(awesome)

let awesome = 5
print(awesome)

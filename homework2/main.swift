//
//  main.swift
//  homework2
//
//  Created by Nail Kamilov on 28.04.2022.
//

import Foundation
// Declare input variables
print("Enter hours:")
let inputHours = Int(readLine()!)!

print("Enter minutes:")
let inputMinutes = Int(readLine()!)!

print("Enter seconds:")
let inputSeconds = Int(readLine()!)!

// Create every functions of problem

func secondsLampTest(seconds: Int) -> String {
    seconds % 2 == 0 ? "Y" : "O"
}

func fiveHoursRowTest(hours: Int) -> String {
    mainProcess(lights: 4, divide: hours / 5)
}

func singleHoursRowTest(hours: Int) -> String {
    mainProcess(lights: 4, divide: hours % 5)
}

func fiveMinutesRowTest(minutes: Int) -> String {
    mainProcess(lights: 11, divide: minutes / 5)
}

func singleMinutesRowTest(minutes: Int) -> String {
    mainProcess(lights: 4, divide: minutes % 5)
}

// Implement main process of Clock
func mainProcess(lights: Int, divide: Int) -> String {
    let intOff = lights - divide
    var onLights = ""
    var offLights = ""
    if divide > 0 {
        for _ in 1...divide {
            onLights += "R" //add Red lights (if it's turn on)
        }
    }
    if intOff > 0 {
        for _ in 1...intOff {
            offLights += "O" //add Off lights
        }
    }
    return onLights + offLights
}

func publishResults() {
    print(secondsLampTest(seconds: inputSeconds),
            fiveHoursRowTest(hours: inputHours),
                singleHoursRowTest(hours: inputHours),
                    fiveMinutesRowTest(minutes: inputMinutes),
                        singleMinutesRowTest(minutes: inputMinutes))
}

publishResults()

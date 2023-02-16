import Foundation
import Glibc
//
//  ConsoleInput.swift
//
//  Created by Alex De Meo
//  Created on 2023/02/11
//  Version 1.0
//  Copyright (c) 2023 Alex De Meo. All rights reserved.
//
//  This program calculates the volume of a sphere.

let qLog = 0.25
let hLog = 0.5
let fLog = 1.0
let maxWeight = 1100.0
let mapleWeight = 20.0

// Getting the radius
print("Enter the log length: ")

if let length = Double(readLine()!) {
    // Deciding what to output
    if (length == fLog || length == qLog || length == hLog) {

        // Doing the math
        let logs = maxWeight / (mapleWeight * length)
        let fmtdLogs = String(format: "%.0f", logs)
        print(
            "\(fmtdLogs) is the max amount of \(length)m logs that can go in the truck"
            )
    } else {
        print("\(length) is not one of the options. Try 1, 0.5 or 0.25")
    }
} else {
    print("Invalid input. Choose either 1, 0.25 or 0.5")
}
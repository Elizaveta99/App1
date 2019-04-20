//
//  main.swift
//  lab6_task3
//
//  Created by Lizaveta Rudzko on 1/30/1398 AP.
//  Copyright © 1398 Lizaveta Rudzko. All rights reserved.
//
import Foundation

func getInput() -> String {
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    let strData = String(data: inputData, encoding: String.Encoding.utf8)!
    return strData.trimmingCharacters(in: CharacterSet.newlines)
}

print("String amount")

var amount:Int = (getInput() as NSString).integerValue
var dict: Dictionary = [String: Int]()

print("Print \(amount) strings")

for _ in 0..<amount {
    let temp:String = getInput();
    if dict[temp] == nil {
        dict[temp] = 1
    }
    else {
        dict[temp]! += 1
    }
}

let sortedDict = dict.sorted(by: {$0.value != $1.value ? $0.value > $1.value : $0.key < $1.key})

var i: Int = 0
for (key, value) in sortedDict {
    print("\(key) - \(value)")
    i += 1
    if i == 5 {
        break;
    }
}




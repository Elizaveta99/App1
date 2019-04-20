//
//  main.swift
//  lab6_task4
//
//  Created by Lizaveta Rudzko on 1/30/1398 AP.
//  Copyright © 1398 Lizaveta Rudzko. All rights reserved.
//

import Foundation

func answer(str:String) {
    var arr: [Substring] = str.split(separator: " ")
    arr.reverse();
    for word in arr {
        let ans = String(word.reversed())
        print(ans, terminator: " ")
    }
    print()
}

print("String :")
var inputStr = readLine()
answer(str: inputStr!)

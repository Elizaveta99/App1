//
//  main.swift
//  lab6_task2
//
//  Created by Lizaveta Rudzko on 1/25/1398 AP.
//  Copyright © 1398 Lizaveta Rudzko. All rights reserved.
//

import Foundation

var a = CommandLine.arguments[1]
var b = CommandLine.arguments[2]
var c = CommandLine.arguments[3]
var d = CommandLine.arguments[4]

if (a < c && b < d || a < d && b < c)
{
    print("Yes")
}
else {
    print("No")
}


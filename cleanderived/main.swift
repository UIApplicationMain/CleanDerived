//
//  main.swift
//  cleanderived
//
//  Created by Jeffery Kuo on 2/20/18.
//  Copyright © 2018 Jeffery Kuo. All rights reserved.
//

import Foundation

let shell = Shell()

let tildeDirectory = NSHomeDirectory()

let derivedData = "\(tildeDirectory)/Library/Developer/Xcode/DerivedData"
print("Deleting \(derivedData)")
let _ = shell.bash(command: "rm", arguments: ["-r", "-f", derivedData])
print(shell.bash(command: "ls", arguments: [derivedData]))

let caches = "\(tildeDirectory)/Library/Caches/com.apple.dt.Xcode"
print("Deleting \(caches)")
let _ = shell.bash(command: "rm", arguments: ["-r", "-f", caches])
print(shell.bash(command: "ls", arguments: [caches]))

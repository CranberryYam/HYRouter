//
//  Dubug.swift
//  RelaxApp4
//
//  Created by Honglin Yi on 4/28/18.
//  Copyright © 2018 henryyi. All rights reserved.
//

import Foundation

/**  automatically ignore print in release mode */
func print(items: Any..., separator: String = " ", terminator: String = "\n") {
    #if DEBUG
        var idx = items.startIndex
        let endIdx = items.endIndex
        repeat {
            Swift.print(items[idx], separator: separator, terminator: idx == (endIdx - 1) ? terminator : separator)
            idx += 1
        }
            while idx < endIdx
    #endif
}
func printAtTop() {
    print("---------------------------------")
    defer { print("------------------------------") }
}

//
//  printTestTool.swift
//  myViper
//
//  Created by cao hua on 2023/8/5.
//

import Foundation

func printTest<T>(_ message: T) {
    let date = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss SSSS"
    
    let stringTime = dateFormatter.string(from: date)
    print("\(stringTime) \(message)")
}


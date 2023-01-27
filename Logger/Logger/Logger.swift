//
//  File.swift
//  
//
//  Created by Stefan Neumärker on 27.01.23.
//

import Foundation

/// Defines a common logger interface
public protocol Logger {
    /// Send log messages in case of debbugging
    /// - Parameter message: Anything to log
    func debug(_ message: String)
}

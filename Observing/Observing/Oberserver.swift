//
//  File.swift
//  
//
//  Created by Stefan Neumärker on 27.01.23.
//

import Foundation

/// Protocol to define an object observing changes in other object
public protocol Observer {
    /// Add an object to be observed
    /// - Parameter observed: Object to observe
    func add(observed: Any)
    /// Remove an object from observing
    /// - Parameter observed: Object currently observed. If the object is not observed, nothing changes
    func remove(observed: Any)
}

//
//  FloatingPoint.swift
//  
//
//  Created by J Rogel PhD on 18/10/2022.
//

public extension FloatingPoint {
    var isInteger: Bool { rounded() == self }
}

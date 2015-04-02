//
//  main.swift
//  Ransom
//
//  Created by Rodrigo Carballo on 4/1/15.
//  Copyright (c) 2015 Rodrigo Carballo. All rights reserved.
//

import Foundation

println("Test")

var testRansom : Ransom = Ransom()

var result : Bool = testRansom.canRansom("test he", magazine: "test")
println(result)


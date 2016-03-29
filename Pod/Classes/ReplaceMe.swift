//
//  SKTimer.swift
//  SKTimer
//
//  Created by Kyle Goslan on 29/03/2016.
//  Copyright © 2016 Kyle Goslan. All rights reserved.
//

import SpriteKit

public class SKTimer {
    
    private var startTime = 0.0
    
    public var time = 0.0
    public var limit: Double?
    public var multiplier = 1.0
    public var on = false
    
    public init() {
        
    }
    
    public convenience init (multiplier: Double) {
        self.init()
        self.multiplier = multiplier
    }
    
    public convenience init (limit: Double) {
        self.init()
        self.limit = limit
    }
    
    public func start(currentTime: Double) {
        startTime = currentTime
        on = true
    }
    
    public func update(currentTime: Double, timeUp: () -> ()?) {
        time = (currentTime - startTime) * multiplier
        
        if let limit = limit {
            if time >= limit {
                time = limit
                on = false
                timeUp()
            }
        }
    }
    
}



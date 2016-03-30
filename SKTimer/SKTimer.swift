//
//  SKTimer.swift
//  SKTimer
//
//  Created by Kyle Goslan on 29/03/2016.
//  Copyright © 2016 Kyle Goslan. All rights reserved.
//

import SpriteKit

/**
 A Simple timer for SpriteKit games.
 
 - important: Call the timer update method from within the scenes update method.
 */
public class SKTimer {
    
    /// The time the timer was started.
    private var startTime = 0.0
    
    /// The current time of the time.
    public var time = 0.0
    
    /// Limit of the timer
    public var limit: Double?
    
    /// Time speed, defaults to 1, can be less.
    public var multiplier = 1.0
    
    /// If the timer is currently on.
    public var on = false
    
    /**
     Creates a new SKTimer object.
     */
    public init() {
        
    }
    
    /**
     Create a timer with a multiplier value. Can be used to speed up the timer.
     
     Default: 1.0
     */
    public convenience init (multiplier: Double) {
        self.init()
        self.multiplier = multiplier
    }
    
    /**
     Create a timer with a time limit.
     
     You can get a callback when the limit is reached by implementing:
     
     func update(currentTime: Double, timeUp: () -> ()?)
     
     By default timers have no limit and will go on indefinately.
     */
    public convenience init (limit: Double) {
        self.init()
        self.limit = limit
    }
    
    /**
     Start the timer.
     */
    public func start(currentTime: Double) {
        startTime = currentTime
        on = true
    }
    
    /**
     Should be called in the scenes update method.
     
     - Parameter currentTime:   The current time in the from update method of the scene.
     - Parameter timeUp (optional):   Callback when the timers limit is reached.
     */
    public func update(currentTime: Double, completion: (() -> ())?) {
        
        guard on else { return }
        
        time = (currentTime - startTime) * multiplier
        
        guard let limit = limit else { return }
        
        if time >= limit {
            time = limit
            on = false
            if let completion = completion {
                completion()
            }
        }
        
    }
    
}



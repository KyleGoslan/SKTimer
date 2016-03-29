//
//  GameScene.swift
//  Lucky Puck
//
//  Created by Kyle Goslan on 29/03/2016.
//  Copyright (c) 2016 Kyle Goslan. All rights reserved.
//

import SpriteKit
import SKTimer

class GameScene: SKScene {
    
    var currentTime = 0.0
    var timer = SKTimer(limit: 3)
    
    override func didMoveToView(view: SKView) {
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        timer.start(currentTime)
    }
   
    override func update(currentTime: CFTimeInterval) {
        
        self.currentTime = currentTime
        
        timer.update(currentTime) {
            print("timeup")
            if self.timer.on {
                print(self.timer.time)
            }
        }
        
    }
}

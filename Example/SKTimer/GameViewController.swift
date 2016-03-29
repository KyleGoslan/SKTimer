//
//  ViewController.swift
//  SKTimer
//
//  Created by KyleGoslan on 03/29/2016.
//  Copyright (c) 2016 KyleGoslan. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    var scene: GameScene!
    var skView: SKView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        skView = self.view as? SKView
        skView!.showsFPS = true
        skView!.showsNodeCount = true
        
        skView!.ignoresSiblingOrder = true
        
        scene = GameScene(size: skView!.bounds.size)
        scene.scaleMode = .AspectFill
        skView!.presentScene(scene)
        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
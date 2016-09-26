//
//  GameViewController.swift
//  Flappy Bird
//
//  Created by Reid Kostenuk on 2016-08-16.
//  Copyright © 2016 App Monkey. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    open override var shouldAutorotate: Bool {
        get {
            return false
        }
    }

    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get{
            if UIDevice.current.userInterfaceIdiom == .phone {
                return .allButUpsideDown
            } else {
                return .all
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    open override var prefersStatusBarHidden: Bool {
        get{
            return true
        }
    }
}

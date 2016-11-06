//
//  GameScene.swift
//  dual-ping-pong
//
//  Created by Sathvik Katam on 11/6/16.
//  Copyright © 2016 Sathvik Katam. All rights reserved.
//


import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    var Enemy = SKSpriteNode()
    var Player = SKSpriteNode()
    var Target = SKSpriteNode()
    
    
    
    override func didMove(to view: SKView) {
        
        Target = self.childNode(withName: "Target") as! SKSpriteNode
        Player = self.childNode(withName: "Player") as! SKSpriteNode
        Enemy = self.childNode(withName: "Enemy") as! SKSpriteNode
        Target.physicsBody?.applyImpulse(CGVector(dx: -20, dy: -20))
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction = 0
        border.restitution = 0
        self.physicsBody = border
        
        
    }
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

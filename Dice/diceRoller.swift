//
//  diceRoller.swift
//  Dice
//
//  Created by toby tang on 2017-10-08.
//  Copyright © 2017 Toby Tang. All rights reserved.
//

import GameKit

struct Dice {
    
    let results = [
        " 😂 ",
        " 😄 ",
        " 🤣 ",
        " 😐 ",
        " 😳 ",
        " 😨 ",
        " 😮 ",
        " 😥 ",
        " 😭 "
        
    ]
    
    func roll () -> String{
        
        
        return results[GKRandomSource.sharedRandom().nextInt(upperBound: results.count)]
    }
    
}


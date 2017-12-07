//
//  ViewController.swift
//  Dice
//
//  Created by toby tang on 2017-10-08.
//  Copyright © 2017 Toby Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceLabel: UILabel!
    
    @IBOutlet weak var diceButton: UIButton!
    let dice = Dice()
    
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        diceLabel.text = dice.roll()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func roll_a_dice() {
        diceLabel.text = dice.roll()
        
        let newColor = colorProvider.randomColor()
        
        view.backgroundColor = newColor
        diceButton.tintColor = newColor
    }
    
}


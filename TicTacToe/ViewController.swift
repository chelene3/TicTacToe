//
//  ViewController.swift
//  TicTacToe
//
//  Created by Chelsea Rowe on 7/23/20.
//  Copyright © 2020 Chelsea Rowe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topRightButton: UIButton!
    @IBOutlet weak var topMiddleButton: UIButton!
    @IBOutlet weak var realTopRight: UIButton!
    @IBOutlet weak var middleLeft: UIButton!
    @IBOutlet weak var middleMiddle: UIButton!
    @IBOutlet weak var middleRight: UIButton!
    @IBOutlet weak var bottomLeft: UIButton!
    @IBOutlet weak var bottomMiddle: UIButton!
    @IBOutlet weak var bottomRight: UIButton!
    
    var Player1Color = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    var Player2Color = #colorLiteral(red: 0.9176470588, green: 0.5647058824, blue: 0.4784313725, alpha: 1)
    
    var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        if (count % 2 == 0) {
            sender.backgroundColor = Player1Color
        } else {
            sender.backgroundColor = Player2Color
        }
        
        count = count + 1
    }
    
}


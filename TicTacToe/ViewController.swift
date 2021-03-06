//
//  ViewController.swift
//  TicTacToe
//
//  Created by Chelsea Rowe on 7/23/20.
//  Copyright © 2020 Chelsea Rowe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TL: UIButton!
    @IBOutlet weak var TM: UIButton!
    @IBOutlet weak var TR: UIButton!
    @IBOutlet weak var ML: UIButton!
    @IBOutlet weak var MM: UIButton!
    @IBOutlet weak var MR: UIButton!
    @IBOutlet weak var BL: UIButton!
    @IBOutlet weak var BM: UIButton!
    @IBOutlet weak var BR: UIButton!
    @IBOutlet weak var newGame: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var Player1Color = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    var Player2Color = #colorLiteral(red: 0.9176470588, green: 0.5647058824, blue: 0.4784313725, alpha: 1)
    var whiteColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    var x = "X"
    var o = "O"
    
    var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        newGame.isHidden = true
        
    }
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        if (sender.currentTitle != "X" && sender.currentTitle != "O") {
            if (count % 2 == 0) {
                sender.backgroundColor = Player1Color
                sender.setTitle(o, for: UIControl.State.normal)
                checkWinner()
            } else {
                sender.backgroundColor = Player2Color
                sender.setTitle(x, for: UIControl.State.normal)
                checkWinner()
            }
            count = count + 1
        }
    }
    
    func checkWinner() {
        //top row
        if TL.backgroundColor == TM.backgroundColor && TM.backgroundColor == TR.backgroundColor && TR.backgroundColor == TL.backgroundColor && (TL.backgroundColor == Player1Color || TL.backgroundColor == Player2Color){
            titleLabel.text = "Game Over"
            newGame.isHidden = false
        }
        
        //middle row
        if ML.backgroundColor == MM.backgroundColor && MM.backgroundColor == MR.backgroundColor && MR.backgroundColor == ML.backgroundColor && (ML.backgroundColor == Player1Color || ML.backgroundColor == Player2Color){
            titleLabel.text = "Game Over"
            newGame.isHidden = false
        }
        
        //bottom row
        if BL.backgroundColor == BM.backgroundColor && BM.backgroundColor == BR.backgroundColor && BR.backgroundColor == BL.backgroundColor && (BL.backgroundColor == Player1Color || BL.backgroundColor == Player2Color){
            titleLabel.text = "Game Over"
            newGame.isHidden = false
        }
        
        //left column
        if TL.backgroundColor == ML.backgroundColor && ML.backgroundColor == BL.backgroundColor && BL.backgroundColor == TL.backgroundColor && (TL.backgroundColor == Player1Color || TL.backgroundColor == Player2Color){
            titleLabel.text = "Game Over"
            newGame.isHidden = false
        }
        
        //middle column
        if TM.backgroundColor == MM.backgroundColor && MM.backgroundColor == BM.backgroundColor && BM.backgroundColor == TM.backgroundColor && (TM.backgroundColor == Player1Color || TM.backgroundColor == Player2Color){
            titleLabel.text = "Game Over"
            newGame.isHidden = false
        }
        
        //right column
        if TR.backgroundColor == MR.backgroundColor && MR.backgroundColor == BR.backgroundColor && BR.backgroundColor == TR.backgroundColor && (TR.backgroundColor == Player1Color || TR.backgroundColor == Player2Color){
            titleLabel.text = "Game Over"
            newGame.isHidden = false
        }
        
        //diagonal
        if TL.backgroundColor == MM.backgroundColor && MM.backgroundColor == BR.backgroundColor && BR.backgroundColor == TL.backgroundColor && (TL.backgroundColor == Player1Color || TL.backgroundColor == Player2Color){
            titleLabel.text = "Game Over"
            newGame.isHidden = false
        }
        
        //diagonal
        if TR.backgroundColor == MM.backgroundColor && MM.backgroundColor == BL.backgroundColor && BL.backgroundColor == TR.backgroundColor && (TR.backgroundColor == Player1Color || TR.backgroundColor == Player2Color){
            titleLabel.text = "Game Over"
            newGame.isHidden = false
        }
        
        if (count == 9) {
            titleLabel.text = "Draw"
            newGame.isHidden = false
        }
        
        //have a play again button pop up when game is won
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        
        TL.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        TM.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        TR.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        ML.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        MM.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        MR.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        BL.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        BM.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        BR.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        TL.setTitle("", for: UIControl.State.normal)
        TM.setTitle("", for: UIControl.State.normal)
        TR.setTitle("", for: UIControl.State.normal)
        ML.setTitle("", for: UIControl.State.normal)
        MM.setTitle("", for: UIControl.State.normal)
        MR.setTitle("", for: UIControl.State.normal)
        BL.setTitle("", for: UIControl.State.normal)
        BM.setTitle("", for: UIControl.State.normal)
        BR.setTitle("", for: UIControl.State.normal)

        titleLabel.text = "Tic. Tac. Toe."
        newGame.isHidden = true
        count = 1
    }
    
    
    //need to account for a draw
    //need to not let people press the same
}

